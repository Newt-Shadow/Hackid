package k7;

import com.google.firebase.components.ComponentRegistrar;
import java.util.List;
/* loaded from: classes.dex */
public interface i {

    /* renamed from: a  reason: collision with root package name */
    public static final i f24818a = new i() { // from class: k7.h
        @Override // k7.i
        public final List a(ComponentRegistrar componentRegistrar) {
            return componentRegistrar.getComponents();
        }
    };

    List a(ComponentRegistrar componentRegistrar);
}
