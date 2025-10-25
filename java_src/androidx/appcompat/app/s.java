package androidx.appcompat.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.appcompat.widget.c1;
import androidx.appcompat.widget.d0;
import androidx.appcompat.widget.h0;
import d0.p0;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class s {

    /* renamed from: b  reason: collision with root package name */
    private static final Class[] f804b = {Context.class, AttributeSet.class};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f805c = {16843375};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f806d = {16844160};

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f807e = {16844156};

    /* renamed from: f  reason: collision with root package name */
    private static final int[] f808f = {16844148};

    /* renamed from: g  reason: collision with root package name */
    private static final String[] f809g = {"android.widget.", "android.view.", "android.webkit."};

    /* renamed from: h  reason: collision with root package name */
    private static final r.i f810h = new r.i();

    /* renamed from: a  reason: collision with root package name */
    private final Object[] f811a = new Object[2];

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final View f812a;

        /* renamed from: b  reason: collision with root package name */
        private final String f813b;

        /* renamed from: c  reason: collision with root package name */
        private Method f814c;

        /* renamed from: d  reason: collision with root package name */
        private Context f815d;

        public a(View view, String str) {
            this.f812a = view;
            this.f813b = str;
        }

        private void a(Context context) {
            int id2;
            String str;
            Method method;
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.f813b, View.class)) != null) {
                        this.f814c = method;
                        this.f815d = context;
                        return;
                    }
                } catch (NoSuchMethodException unused) {
                }
                if (context instanceof ContextWrapper) {
                    context = ((ContextWrapper) context).getBaseContext();
                } else {
                    context = null;
                }
            }
            if (this.f812a.getId() == -1) {
                str = "";
            } else {
                str = " with id '" + this.f812a.getContext().getResources().getResourceEntryName(id2) + "'";
            }
            throw new IllegalStateException("Could not find method " + this.f813b + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f812a.getClass() + str);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f814c == null) {
                a(this.f812a.getContext());
            }
            try {
                this.f814c.invoke(this.f815d, view);
            } catch (IllegalAccessException e10) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e10);
            } catch (InvocationTargetException e11) {
                throw new IllegalStateException("Could not execute method for android:onClick", e11);
            }
        }
    }

    private void a(Context context, View view, AttributeSet attributeSet) {
        if (Build.VERSION.SDK_INT > 28) {
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f806d);
        if (obtainStyledAttributes.hasValue(0)) {
            p0.V(view, obtainStyledAttributes.getBoolean(0, false));
        }
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, f807e);
        if (obtainStyledAttributes2.hasValue(0)) {
            p0.W(view, obtainStyledAttributes2.getString(0));
        }
        obtainStyledAttributes2.recycle();
        TypedArray obtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, f808f);
        if (obtainStyledAttributes3.hasValue(0)) {
            p0.h0(view, obtainStyledAttributes3.getBoolean(0, false));
        }
        obtainStyledAttributes3.recycle();
    }

    private void b(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if ((context instanceof ContextWrapper) && p0.B(view)) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f805c);
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                view.setOnClickListener(new a(view, string));
            }
            obtainStyledAttributes.recycle();
        }
    }

    private View s(Context context, String str, String str2) {
        String str3;
        r.i iVar = f810h;
        Constructor constructor = (Constructor) iVar.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    str3 = str2 + str;
                } catch (Exception unused) {
                    return null;
                }
            } else {
                str3 = str;
            }
            constructor = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f804b);
            iVar.put(str, constructor);
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.f811a);
    }

    private View t(Context context, String str, AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, Constants.CLASS);
        }
        try {
            Object[] objArr = this.f811a;
            objArr[0] = context;
            objArr[1] = attributeSet;
            if (-1 == str.indexOf(46)) {
                int i10 = 0;
                while (true) {
                    String[] strArr = f809g;
                    if (i10 >= strArr.length) {
                        return null;
                    }
                    View s10 = s(context, str, strArr[i10]);
                    if (s10 != null) {
                        return s10;
                    }
                    i10++;
                }
            } else {
                return s(context, str, null);
            }
        } catch (Exception unused) {
            return null;
        } finally {
            Object[] objArr2 = this.f811a;
            objArr2[0] = null;
            objArr2[1] = null;
        }
    }

    private static Context u(Context context, AttributeSet attributeSet, boolean z10, boolean z11) {
        int i10;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h.j.H3, 0, 0);
        if (z10) {
            i10 = obtainStyledAttributes.getResourceId(h.j.I3, 0);
        } else {
            i10 = 0;
        }
        if (z11 && i10 == 0 && (i10 = obtainStyledAttributes.getResourceId(h.j.J3, 0)) != 0) {
            Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        obtainStyledAttributes.recycle();
        if (i10 != 0) {
            if (!(context instanceof androidx.appcompat.view.d) || ((androidx.appcompat.view.d) context).c() != i10) {
                return new androidx.appcompat.view.d(context, i10);
            }
            return context;
        }
        return context;
    }

    private void v(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }

    protected androidx.appcompat.widget.d c(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.d(context, attributeSet);
    }

    protected androidx.appcompat.widget.f d(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.f(context, attributeSet);
    }

    protected androidx.appcompat.widget.g e(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.g(context, attributeSet);
    }

    protected androidx.appcompat.widget.h f(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.h(context, attributeSet);
    }

    protected androidx.appcompat.widget.l g(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.l(context, attributeSet);
    }

    protected androidx.appcompat.widget.p h(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.p(context, attributeSet);
    }

    protected androidx.appcompat.widget.r i(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.r(context, attributeSet);
    }

    protected androidx.appcompat.widget.s j(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.s(context, attributeSet);
    }

    protected androidx.appcompat.widget.v k(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.v(context, attributeSet);
    }

    protected androidx.appcompat.widget.w l(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.w(context, attributeSet);
    }

    protected androidx.appcompat.widget.y m(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.y(context, attributeSet);
    }

    protected androidx.appcompat.widget.a0 n(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.a0(context, attributeSet);
    }

    protected d0 o(Context context, AttributeSet attributeSet) {
        return new d0(context, attributeSet);
    }

    protected h0 p(Context context, AttributeSet attributeSet) {
        return new h0(context, attributeSet);
    }

    protected View q(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    public final View r(View view, String str, Context context, AttributeSet attributeSet, boolean z10, boolean z11, boolean z12, boolean z13) {
        Context context2;
        View l10;
        if (z10 && view != null) {
            context2 = view.getContext();
        } else {
            context2 = context;
        }
        if (z11 || z12) {
            context2 = u(context2, attributeSet, z11, z12);
        }
        if (z13) {
            context2 = c1.b(context2);
        }
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1946472170:
                if (str.equals("RatingBar")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1455429095:
                if (str.equals("CheckedTextView")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1346021293:
                if (str.equals("MultiAutoCompleteTextView")) {
                    c10 = 2;
                    break;
                }
                break;
            case -938935918:
                if (str.equals("TextView")) {
                    c10 = 3;
                    break;
                }
                break;
            case -937446323:
                if (str.equals("ImageButton")) {
                    c10 = 4;
                    break;
                }
                break;
            case -658531749:
                if (str.equals("SeekBar")) {
                    c10 = 5;
                    break;
                }
                break;
            case -339785223:
                if (str.equals("Spinner")) {
                    c10 = 6;
                    break;
                }
                break;
            case 776382189:
                if (str.equals("RadioButton")) {
                    c10 = 7;
                    break;
                }
                break;
            case 799298502:
                if (str.equals("ToggleButton")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1125864064:
                if (str.equals("ImageView")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1413872058:
                if (str.equals("AutoCompleteTextView")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1601505219:
                if (str.equals("CheckBox")) {
                    c10 = 11;
                    break;
                }
                break;
            case 1666676343:
                if (str.equals("EditText")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 2001146706:
                if (str.equals("Button")) {
                    c10 = '\r';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                l10 = l(context2, attributeSet);
                v(l10, str);
                break;
            case 1:
                l10 = f(context2, attributeSet);
                v(l10, str);
                break;
            case 2:
                l10 = j(context2, attributeSet);
                v(l10, str);
                break;
            case 3:
                l10 = o(context2, attributeSet);
                v(l10, str);
                break;
            case 4:
                l10 = h(context2, attributeSet);
                v(l10, str);
                break;
            case 5:
                l10 = m(context2, attributeSet);
                v(l10, str);
                break;
            case 6:
                l10 = n(context2, attributeSet);
                v(l10, str);
                break;
            case 7:
                l10 = k(context2, attributeSet);
                v(l10, str);
                break;
            case '\b':
                l10 = p(context2, attributeSet);
                v(l10, str);
                break;
            case '\t':
                l10 = i(context2, attributeSet);
                v(l10, str);
                break;
            case '\n':
                l10 = c(context2, attributeSet);
                v(l10, str);
                break;
            case 11:
                l10 = e(context2, attributeSet);
                v(l10, str);
                break;
            case '\f':
                l10 = g(context2, attributeSet);
                v(l10, str);
                break;
            case '\r':
                l10 = d(context2, attributeSet);
                v(l10, str);
                break;
            default:
                l10 = q(context2, str, attributeSet);
                break;
        }
        if (l10 == null && context != context2) {
            l10 = t(context2, str, attributeSet);
        }
        if (l10 != null) {
            b(l10, attributeSet);
            a(context2, l10, attributeSet);
        }
        return l10;
    }
}
