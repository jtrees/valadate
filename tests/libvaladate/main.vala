namespace Valadate {

	public class TestTestCase : TestCase {
		
		public TestTestCase(string name) {
			base(name);
		}
		
	}

	void add_tests () {
		GLib.Test.add_func ("/libvaladate/testcase/new", () => {
			TestCase test = new TestTestCase("TestTestCase");
			assert(test is TestCase);
			assert(test.suite != null);
		});

		GLib.Test.add_func ("/libvaladate/testcase/add_test", () => {
			TestCase test = new TestTestCase("TestTestCase");
			test.add_test("add_test", ()=> { assert(true); });
			assert(test is TestCase);
		});
	}

	void main (string[] args) {
		GLib.Test.init (ref args);
		add_tests ();
		GLib.Test.run ();
	}

}
