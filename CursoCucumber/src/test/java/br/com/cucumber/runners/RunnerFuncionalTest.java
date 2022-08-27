package br.com.cucumber.runners;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.CucumberOptions.SnippetType;



@RunWith(Cucumber.class)
@CucumberOptions(
		//Comando para executar na linha de comando
		//mvn test -Dcucumber.options="C:\DevTools\Workspaces\CursoCucumber\src\test\resources\features\aprender_cucumber.feature"
		//mapeamento de onde encontrar a feature
		//features = "src/test/resources/features/inserir_conta.feature",
		features = "src/test/resources/features/",
		//mapeamento de onde encontrar as steps
		glue = {"br.com.cucumber.steps","br.com.cucumber.config"},
		//especifica qual cenarios ou features deve executar apenas, 
		//2,0tags = {"@tipo1, @tipo2"},
		//especifica qual cenarios ou features deve ignorar,
		tags = {"@funcional"},
		//adiciona as informações do dos cenarios no console, e exporta relatorios em html ou json
		plugin = {"pretty","html:target/report-html", "json:target/report.json"},
		//Tira os caracteres especiais de formatação colorida do terminal
		//monochrome = true,
		//Formata o nome dos metodos sem separar por underline 
		snippets = SnippetType.CAMELCASE,
		//skipa os testes, valida só os mapeamentos dos métodos
		dryRun = false,
		//true:passos sem mapeamento ocasiona erro, false: ficam skiped
		strict = false
		)
public class RunnerFuncionalTest {
	@BeforeClass
	public static void reset() {
		System.setProperty("webdriver.gecko.driver", "driver/geckodriver.exe");
		WebDriver driver = new FirefoxDriver();
		driver.get("https://seubarriga.wcaquino.me");
		driver.findElement(By.id("email")).sendKeys("hugo@bol");
		driver.findElement(By.name("senha")).sendKeys("123456");
		driver.findElement(By.tagName("button")).click();
		driver.findElement(By.linkText("reset")).click();
		driver.quit();
	} 
}
