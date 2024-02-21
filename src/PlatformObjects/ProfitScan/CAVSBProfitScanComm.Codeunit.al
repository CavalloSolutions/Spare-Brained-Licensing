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

    procedure CheckAPILicenseCount(var CAVExtensionLicense: Record "CAVSB Extension License"; ResponseBody: Text): Boolean;
    begin

    end;

    procedure SampleKeyFormatText(): Text;
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

    end;

    procedure ClientSideLicenseCount(var CAVExtensionLicense: Record "CAVSB Extension License"): Boolean;
    begin

    end;

    procedure GetTestProductUrl(): Text;
    begin

    end;

    procedure GetTestProductId(): Text;
    begin

    end;

    procedure GetTestProductKey(): Text;
    begin

    end;

    procedure GetTestSupportUrl(): Text;
    begin

    end;

    procedure GetTestBillingEmail(): Text;
    begin

    end;
}