package tests;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.commons.io.FileUtils;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate.Test;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
//import static junit.framework.TestCase.assertTrue;

public class TestRunner {

	@Test
	public void testParallel() {
		
		Results results = Runner.parallel(getClass(), 5);
		generateReport(results.getReportDir());
//		assertTrue(results.getErrorMessages(), results.getFailCount() == 0);

//		System.setProperty("mock.env", "karateTesting"); // ensure reset if other tests (e.g. mock) had set env in CI
//		Results results = Runner.parallel(getClass(), 5);
	
//		TestParallel.generateReport(results.getReportDir());
		//	assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
		
	}


		public static void generateReport(String karateOutputPath) {
			Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
			List<String> jsonPaths = new ArrayList(jsonFiles.size());
			jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));

			Configuration config = new net.masterthought.cucumber.Configuration(new File("target"), "karateTesting");
			ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
			reportBuilder.generateReports();
		}

	}