module SaasuX
  class Invoice
    include XML::Mapping
    
    text_node :uid, "@uid", :default_value => ""
    text_node :last_updated_uid, "@lastUpdatedUid", :default_value => ""
    
    text_node :utc_first_created, "utcFirstCreated", :default_value => ""
    text_node :utc_last_modified, "utcLastModified", :default_value => ""
    text_node :transaction_type, "transactionType", :default_value => ""
    text_node :date, "date", :default_value => ""
    text_node :contact_uid, "contactUid", :default_value => ""
    text_node :ship_to_contact_uid, "shipToContactUid", :default_value => ""
    text_node :summary, "summary", :default_value => ""
    text_node :tags, "tags", :default_value => ""
    text_node :ccy, "ccy", :default_value => ""
    text_node :auto_populate_fx_rate, "autoPopulateFxRate", :default_value => ""
    text_node :fc_to_bc_fx_rate, "fcToBcFxRate", :default_value => ""
    text_node :notes, "notes", :default_value => ""
    text_node :external_notes, "externalNotes", :default_value => ""
    text_node :requires_follow_up, "requiresFollowUp", :default_value => ""
    text_node :due_or_expiry_date, "dueOrExpiryDate", :default_value => ""
    text_node :layout, "layout", :default_value => ""
    text_node :status, "status", :default_value => ""
    text_node :invoice_type, "invoiceType", :default_value => ""
    text_node :invoice_number, "invoiceNumber", :default_value => ""
    text_node :purchase_order_number, "purchaseOrderNumber", :default_value => ""

    object_node :invoice_items, "invoiceItems", :class => InvoiceItems, :default_value => nil
    text_node :is_sent, "isSent", :default_value => ""

    object_node :trading_terms, "tradingTerms", :class => TradingTerms, :default_value => nil

    # Payments
    array_node :payments, "payments", "payment", :class => InvoicePayment, :default_value => []
    # FIXME to be implemented
    #object_node :quick_payment, "quickPayment", :class => QuickPayment, :default_value => nil
  end
end