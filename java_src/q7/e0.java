package q7;

import java.io.File;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e0 {

    /* renamed from: a  reason: collision with root package name */
    private final String f28425a;

    /* renamed from: b  reason: collision with root package name */
    private final w7.g f28426b;

    public e0(String str, w7.g gVar) {
        this.f28425a = str;
        this.f28426b = gVar;
    }

    private File b() {
        return this.f28426b.g(this.f28425a);
    }

    public boolean a() {
        try {
            return b().createNewFile();
        } catch (IOException e10) {
            n7.g f10 = n7.g.f();
            f10.e("Error creating marker: " + this.f28425a, e10);
            return false;
        }
    }

    public boolean c() {
        return b().exists();
    }

    public boolean d() {
        return b().delete();
    }
}
