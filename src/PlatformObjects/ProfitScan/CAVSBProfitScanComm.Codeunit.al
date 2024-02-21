codeunit 71264335 "CAVSB Profit Scan Comm." implements "CAVSB ILicenseCommunicator", "CAVSB ILicenseCommunicator2"
{
    procedure CallAPIForVerification(var CAVExtensionLicense: Record "CAVSB Extension License"; var ResponseBody: Text; IncrementLicenseCount: Boolean) ResultOK: Boolean;
    begin

    end;

    procedure ReportPossibleMisuse(CAVExtensionLicense: Record "CAVSB Extension License");
    begin

    end;

    procedure PopulateSubscriptionFromResponse(var CAVExtensionLicense: Record "CAVSB Extension License"; var ResponseBody: Text);
    begin

    end;

    procedure CallAPIForActivation(var CAVExtensionLicense: Record "CAVSB Extension License"; var ResponseBody: Text) ResultOK: Boolean;
    begin

    end;

    procedure CallAPIForDeactivation(var CAVExtensionLicense: Record "CAVSB Extension License"; var ResponseBody: Text) ResultOK: Boolean;
    begin

    end;

    procedure ClientSideDeactivationPossible(var CAVExtensionLicense: Record "CAVSB Extension License"): Boolean;
    begin
        exit(true);
    end;

    procedure ClientSideLicenseCount(var CAVExtensionLicense: Record "CAVSB Extension License"): Boolean;
    begin
        exit(false);
    end;

    procedure CheckAPILicenseCount(var CAVExtensionLicense: Record "CAVSB Extension License"; ResponseBody: Text): Boolean
    begin
        exit(true);
    end;

    procedure SampleKeyFormatText(): Text
    var
        CavalloKeyFormatTok: Label 'The key will look like XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX.';
    begin
        exit(CavalloKeyFormatTok);
    end;

    procedure GetTestProductUrl(): Text
    begin
        exit(CavalloTestProductUrlTok);
    end;

    procedure GetTestProductId(): Text
    begin
        exit(CavalloTestProductIdTok);
    end;

    procedure GetTestProductKey(): Text
    begin
        exit(CavalloTestProductKeyTok);
    end;

    procedure GetTestSupportUrl(): Text
    begin
        exit(CavalloSupportUrlTok);
    end;

    procedure GetTestBillingEmail(): Text
    begin
        exit(CavalloBillingEmailTok);
    end;

    var
        CavalloBillingEmailTok: Label 'support@cavallo.com', Locked = true;
        CavalloSupportUrlTok: Label 'support@cavallo.com', Locked = true;
        CavalloTestProductIdTok: Label '39128', Locked = true;
        CavalloTestProductKeyTok: Label 'CE2F02DE-657C-4F76-8F93-0E352C9A30B2', Locked = true;
        CavalloTestProductUrlTok: Label 'https://www.cavallo.com/profit-scan-pro/', Locked = true;
}