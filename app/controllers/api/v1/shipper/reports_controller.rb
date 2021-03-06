class Api::V1::Shipper::ReportsController < Api::ShipperBaseController
  before_action :ensure_params_true, :find_invoice, :find_user_invoice,
    :check_exist_report, :check_conditions_to_report, :check_black_list

  def create
    @report = @invoice.reviews.build report_params
    @report.owner = current_user
    @report.recipient = @invoice.user
    @report.review_type = "report"
    if @report.save
      render json: {message: I18n.t("report.create_success"),
        data: {report: @report}, code: 1}, status: 200
    else
      render json: {message: error_messages(@report.errors.messages), data: {},
        code: 0}, status: 200
    end
  end

  private
  def report_params
    params.require(:report).permit Review::REPORT_ATTRIBUTES_PARAMS
  end

  def ensure_params_true
    check_params = CheckParams.new attributes_params: Review::REPORT_ATTRIBUTES_PARAMS,
      params: params[:report]
    unless check_params.perform?
      render json: {message: I18n.t("rate.missing_params"), data: {}, code: 0},
        status: 422
    end
  end

  def find_invoice
    @invoice = Invoice.find_by id: params[:report][:invoice_id]
    if @invoice.nil?
      render json: {message: I18n.t("rate.invoice.get_invoice_fail"), data: {},
        code: 0}, status: 200
    end
  end

  def find_user_invoice
    @user_invoice = @invoice.user_invoices.find_by_status @invoice.status
    if @user_invoice.nil?
      render json: {message: I18n.t("rate.invoice.get_user_invoice_fail"), data: {},
        code: 0}, status: 200
    end
  end

  def check_exist_report
    @report = @invoice.reviews.find_by owner: current_user, review_type: "report"
    render json: {message: I18n.t("report.invoice.report_exist"), data: {},
      code: 0}, status: 200 if @report
  end

  def check_conditions_to_report
    shipper_condition = ConditionReportServices::ShipperConditionService.new invoice: @invoice,
      user_invoice: @user_invoice, current_user: current_user
    if !shipper_condition.perform?
      render json: {message: I18n.t("report.create_fail"), data: {},
        code: 0}, status: 200
    end
  end
end
