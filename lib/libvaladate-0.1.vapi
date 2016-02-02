/* libvaladate-0.1.vapi generated by valac 0.30.0, do not modify. */

namespace Valadate {
	[CCode (cheader_filename = "libvaladate.h")]
	public class TempDir : GLib.Object {
		public TempDir ();
		public string contents (string path);
		public Valadate.TempDir copy (string path, string src_path);
		public static void delete_recursive (GLib.File file) throws GLib.Error;
		public GLib.File file (string path);
		public class string get_orig_dir_name ();
		public class string get_tmp_dir_name ();
		public Valadate.TempDir shell (string path, string code);
		public Valadate.TempDir store (string path, string content);
		public GLib.File dir { get; }
		public GLib.File src_dir { owned get; }
	}
	[CCode (cheader_filename = "libvaladate.h")]
	public interface Fixture : GLib.Object {
		public int get_timeout ();
		public void set_timeout (int timeout);
		public virtual void set_up ();
		public virtual void tear_down ();
	}
	[CCode (cheader_filename = "libvaladate.h")]
	public delegate void AsyncBegin (GLib.AsyncReadyCallback callback);
	[CCode (cheader_filename = "libvaladate.h")]
	public delegate void AsyncFinish (GLib.AsyncResult result);
	[CCode (cheader_filename = "libvaladate.h")]
	public delegate void Block ();
	[CCode (cheader_filename = "libvaladate.h")]
	public delegate void CancelableAsyncBegin (GLib.Cancellable cancel, GLib.AsyncReadyCallback callback);
	[CCode (cheader_filename = "libvaladate.h")]
	public delegate bool Predicate ();
	[CCode (cheader_filename = "libvaladate.h")]
	public static bool wait_for_async (int timeout, Valadate.AsyncBegin async_function, Valadate.AsyncFinish async_finish);
	[CCode (cheader_filename = "libvaladate.h")]
	public static bool wait_for_cancellable_async (int timeout, Valadate.CancelableAsyncBegin async_function, Valadate.AsyncFinish async_finish);
	[CCode (cheader_filename = "libvaladate.h")]
	public static bool wait_for_condition (int timeout, GLib.Object emitter, string signame, owned Valadate.Predicate predicate, Valadate.Block block);
	[CCode (cheader_filename = "libvaladate.h")]
	public static bool wait_for_signal (int timeout, GLib.Object emitter, string signame, Valadate.Block block);
}