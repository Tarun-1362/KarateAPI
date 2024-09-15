package tests;

import static org.junit.jupiter.api.Assertions.assertEquals;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;
/*
class SampleTest {
//
	//	@Karate.Test
	//	Karate testSample1() {
	//		return Karate.run("SampleTest").relativeTo(getClass());
	//	}
	//	
	//	@Karate.Test
	//	Karate testSample() {
	//		return Karate.run("../tests/features/May9/Put1").relativeTo(getClass());
	//	}
	//	
	//	@Karate.Test
	//	Karate testPath() {
	//		return Karate.run("classpath:../tests/features/May9/Get1.feature");
	//	}

	@Karate.Test
	Karate testTags() {
		return Karate.run("SampleTest").tags("@second").relativeTo(getClass());
	}
	//
	//	@Karate.Test
	//	Karate testSystemProperty() {
	//		return Karate.run("classpath:karate/tags.feature")
	//				.tags("@second")
	//				.karateEnv("e2e")
	//				.systemProperty("foo", "bar");
	//	}

	@Test
	void testParallel() {
		Results results = Runner.path("classpath:tests").parallel(5);
		assertEquals(0, results.getFailCount(), results.getErrorMessages());
	}
	
	
	void generateRports() {
		File reportOutputDirectory = new File("target");
		List<String> jsonFiles = new ArrayList<>();
		jsonFiles.add("cucumber-report-1.json");
		jsonFiles.add("cucumber-report-2.json");

		String buildNumber = "1";
		String projectName = "cucumberProject";

		Configuration configuration = new Configuration(reportOutputDirectory, projectName);
		// optional configuration - check javadoc for details
		configuration.addPresentationModes(PresentationMode.RUN_WITH_JENKINS);
		// do not make scenario failed when step has status SKIPPED
		configuration.setNotFailingStatuses(Collections.singleton(Status.SKIPPED));
		configuration.setBuildNumber(buildNumber);
		// addidtional metadata presented on main page
		configuration.addClassifications("Platform", "Windows");
		configuration.addClassifications("Browser", "Firefox");
		configuration.addClassifications("Branch", "release/1.0");

		// optionally add metadata presented on main page via properties file
		List<String> classificationFiles = new ArrayList<>();
		classificationFiles.add("properties-1.properties");
		classificationFiles.add("properties-2.properties");
		configuration.addClassificationFiles(classificationFiles);

		// optionally specify qualifiers for each of the report json files
		configuration.addPresentationModes(PresentationMode.PARALLEL_TESTING);
		configuration.setQualifier("cucumber-report-1", "First report");
		configuration.setQualifier("cucumber-report-2", "Second report");

		ReportBuilder reportBuilder = new ReportBuilder(jsonFiles, configuration);
		Reportable result = reportBuilder.generateReports();
		// and here validate 'result' to decide what to do if report has failed
		
	}
//
}
*/