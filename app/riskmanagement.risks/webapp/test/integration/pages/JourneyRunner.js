sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"riskmanagement/risks/test/integration/pages/RisksObjectPage"
], function (JourneyRunner, RisksObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('riskmanagement/risks') + '/test/flpSandbox.html#riskmanagementrisks-tile',
        pages: {
			onTheRisksObjectPage: RisksObjectPage
        },
        async: true
    });

    return runner;
});

