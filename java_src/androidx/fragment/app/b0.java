package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import io.flutter.plugins.firebase.crashlytics.Constants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b0 implements LayoutInflater.Factory2 {

    /* renamed from: a  reason: collision with root package name */
    final i0 f2575a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements View.OnAttachStateChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ o0 f2576a;

        a(o0 o0Var) {
            this.f2576a = o0Var;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            p k10 = this.f2576a.k();
            this.f2576a.m();
            y0.u((ViewGroup) k10.mView.getParent(), b0.this.f2575a).q();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(i0 i0Var) {
        this.f2575a = i0Var;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        o0 w10;
        if (x.class.getName().equals(str)) {
            return new x(context, attributeSet, this.f2575a);
        }
        if ("fragment".equals(str)) {
            String attributeValue = attributeSet.getAttributeValue(null, Constants.CLASS);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, s0.c.f29229a);
            if (attributeValue == null) {
                attributeValue = obtainStyledAttributes.getString(s0.c.f29230b);
            }
            int resourceId = obtainStyledAttributes.getResourceId(s0.c.f29231c, -1);
            String string = obtainStyledAttributes.getString(s0.c.f29232d);
            obtainStyledAttributes.recycle();
            if (attributeValue == null || !z.b(context.getClassLoader(), attributeValue)) {
                return null;
            }
            int id2 = view != null ? view.getId() : 0;
            if (id2 == -1 && resourceId == -1 && string == null) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
            }
            p i02 = resourceId != -1 ? this.f2575a.i0(resourceId) : null;
            if (i02 == null && string != null) {
                i02 = this.f2575a.j0(string);
            }
            if (i02 == null && id2 != -1) {
                i02 = this.f2575a.i0(id2);
            }
            if (i02 == null) {
                i02 = this.f2575a.u0().a(context.getClassLoader(), attributeValue);
                i02.mFromLayout = true;
                i02.mFragmentId = resourceId != 0 ? resourceId : id2;
                i02.mContainerId = id2;
                i02.mTag = string;
                i02.mInLayout = true;
                i0 i0Var = this.f2575a;
                i02.mFragmentManager = i0Var;
                i02.mHost = i0Var.w0();
                i02.onInflate(this.f2575a.w0().f(), attributeSet, i02.mSavedFragmentState);
                w10 = this.f2575a.i(i02);
                if (i0.J0(2)) {
                    Log.v("FragmentManager", "Fragment " + i02 + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                }
            } else if (!i02.mInLayout) {
                i02.mInLayout = true;
                i0 i0Var2 = this.f2575a;
                i02.mFragmentManager = i0Var2;
                i02.mHost = i0Var2.w0();
                i02.onInflate(this.f2575a.w0().f(), attributeSet, i02.mSavedFragmentState);
                w10 = this.f2575a.w(i02);
                if (i0.J0(2)) {
                    Log.v("FragmentManager", "Retained Fragment " + i02 + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                }
            } else {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id2) + " with another fragment for " + attributeValue);
            }
            ViewGroup viewGroup = (ViewGroup) view;
            t0.c.g(i02, viewGroup);
            i02.mContainer = viewGroup;
            w10.m();
            w10.j();
            View view2 = i02.mView;
            if (view2 != null) {
                if (resourceId != 0) {
                    view2.setId(resourceId);
                }
                if (i02.mView.getTag() == null) {
                    i02.mView.setTag(string);
                }
                i02.mView.addOnAttachStateChangeListener(new a(w10));
                return i02.mView;
            }
            throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
        }
        return null;
    }
}
