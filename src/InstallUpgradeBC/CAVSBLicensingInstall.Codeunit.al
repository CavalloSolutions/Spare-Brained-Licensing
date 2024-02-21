codeunit 71264333 "CAVSB Licensing Install"
{
    Subtype = Install;

    var
        CavalloProfitScanSubscriptionIdTok: Label '6fa64f0a-fad4-4d5a-8c84-b2de9fd96fa8';

    trigger OnInstallAppPerDatabase()
    var
        CAVSBTelemetry: Codeunit "CAVSB Telemetry";
    begin
        PerformInstallOfTestSubscriptions();
        CAVSBTelemetry.LicensingAppInstalled();
    end;

    procedure PerformInstallOfTestSubscriptions()
    begin
        AddTestProduct(Enum::"CAVSB License Platform"::CavalloProfitScan, CavalloProfitScanSubscriptionIdTok);
    end;

    internal procedure AddTestProduct(WhichLicensePlatform: Enum "CAVSB License Platform"; TestProductId: Text)
    var
        CAVExtensionLicense: Record "CAVSB Extension License";
        TestLicenseNameTok: Label '%1 Subscription', Comment = '%1 is the Licensing Extension name.';
        LicensePlatform: Interface "CAVSB ILicenseCommunicator2";
        AppInfo: ModuleInfo;
        TestProductGuid: Guid;
    begin
        NavApp.GetCurrentModuleInfo(AppInfo);
        Evaluate(TestProductGuid, TestProductId);

        if not CAVExtensionLicense.Get(TestProductGuid) then begin
            CAVExtensionLicense.Init();
            Evaluate(CAVExtensionLicense."Entry Id", TestProductGuid);
            CAVExtensionLicense.Insert(true);
        end;

        CAVExtensionLicense."Extension App Id" := AppInfo.Id;
        CAVExtensionLicense."Extension Name" := StrSubstNo(TestLicenseNameTok, AppInfo.Name);
        CAVExtensionLicense."License Platform" := WhichLicensePlatform;
        LicensePlatform := CAVExtensionLicense."License Platform";
        CAVExtensionLicense."Submodule Name" := CopyStr(UpperCase(Format(WhichLicensePlatform)), 1, MaxStrLen(CAVExtensionLicense."Submodule Name"));

        CAVExtensionLicense."Product Code" := CopyStr(LicensePlatform.GetTestProductId(), 1, MaxStrLen(CAVExtensionLicense."Product Code"));
        CAVExtensionLicense."Product URL" := CopyStr(LicensePlatform.GetTestProductUrl(), 1, MaxStrLen(CAVExtensionLicense."Product URL"));
        CAVExtensionLicense."Support URL" := CopyStr(LicensePlatform.GetTestSupportUrl(), 1, MaxStrLen(CAVExtensionLicense."Support URL"));
        CAVExtensionLicense."Billing Support Email" := CopyStr(LicensePlatform.GetTestBillingEmail(), 1, MaxStrLen(CAVExtensionLicense."Billing Support Email"));
        CAVExtensionLicense.Modify();
    end;
}
