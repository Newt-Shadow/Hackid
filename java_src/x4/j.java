package x4;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes.dex */
public interface j extends h {

    /* loaded from: classes.dex */
    public interface a {
        j a();
    }

    void close();

    void d(m0 m0Var);

    long i(n nVar);

    default Map k() {
        return Collections.emptyMap();
    }

    Uri o();
}
