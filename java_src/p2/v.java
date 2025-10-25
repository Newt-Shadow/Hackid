package p2;

import android.content.Context;
import java.io.Closeable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class v implements Closeable {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface a {
        a a(Context context);

        v build();
    }

    abstract x2.d a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract u b();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        a().close();
    }
}
