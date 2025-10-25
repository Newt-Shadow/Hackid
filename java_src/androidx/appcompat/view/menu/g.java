package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public class g implements x.a {
    private static final int[] A = {1, 4, 5, 3, 2, 0};

    /* renamed from: a  reason: collision with root package name */
    private final Context f1029a;

    /* renamed from: b  reason: collision with root package name */
    private final Resources f1030b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f1031c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f1032d;

    /* renamed from: e  reason: collision with root package name */
    private a f1033e;

    /* renamed from: m  reason: collision with root package name */
    private ContextMenu.ContextMenuInfo f1041m;

    /* renamed from: n  reason: collision with root package name */
    CharSequence f1042n;

    /* renamed from: o  reason: collision with root package name */
    Drawable f1043o;

    /* renamed from: p  reason: collision with root package name */
    View f1044p;

    /* renamed from: x  reason: collision with root package name */
    private i f1052x;

    /* renamed from: z  reason: collision with root package name */
    private boolean f1054z;

    /* renamed from: l  reason: collision with root package name */
    private int f1040l = 0;

    /* renamed from: q  reason: collision with root package name */
    private boolean f1045q = false;

    /* renamed from: r  reason: collision with root package name */
    private boolean f1046r = false;

    /* renamed from: s  reason: collision with root package name */
    private boolean f1047s = false;

    /* renamed from: t  reason: collision with root package name */
    private boolean f1048t = false;

    /* renamed from: u  reason: collision with root package name */
    private boolean f1049u = false;

    /* renamed from: v  reason: collision with root package name */
    private ArrayList f1050v = new ArrayList();

    /* renamed from: w  reason: collision with root package name */
    private CopyOnWriteArrayList f1051w = new CopyOnWriteArrayList();

    /* renamed from: y  reason: collision with root package name */
    private boolean f1053y = false;

    /* renamed from: f  reason: collision with root package name */
    private ArrayList f1034f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private ArrayList f1035g = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    private boolean f1036h = true;

    /* renamed from: i  reason: collision with root package name */
    private ArrayList f1037i = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    private ArrayList f1038j = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    private boolean f1039k = true;

    /* loaded from: classes.dex */
    public interface a {
        boolean a(g gVar, MenuItem menuItem);

        void b(g gVar);
    }

    /* loaded from: classes.dex */
    public interface b {
        boolean a(i iVar);
    }

    public g(Context context) {
        this.f1029a = context;
        this.f1030b = context.getResources();
        c0(true);
    }

    private static int B(int i10) {
        int i11 = ((-65536) & i10) >> 16;
        if (i11 >= 0) {
            int[] iArr = A;
            if (i11 < iArr.length) {
                return (i10 & 65535) | (iArr[i11] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    private void N(int i10, boolean z10) {
        if (i10 >= 0 && i10 < this.f1034f.size()) {
            this.f1034f.remove(i10);
            if (z10) {
                K(true);
            }
        }
    }

    private void W(int i10, CharSequence charSequence, int i11, Drawable drawable, View view) {
        Resources C = C();
        if (view != null) {
            this.f1044p = view;
            this.f1042n = null;
            this.f1043o = null;
        } else {
            if (i10 > 0) {
                this.f1042n = C.getText(i10);
            } else if (charSequence != null) {
                this.f1042n = charSequence;
            }
            if (i11 > 0) {
                this.f1043o = androidx.core.content.a.e(u(), i11);
            } else if (drawable != null) {
                this.f1043o = drawable;
            }
            this.f1044p = null;
        }
        K(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0019, code lost:
        if (d0.s0.l(android.view.ViewConfiguration.get(r2.f1029a), r2.f1029a) != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c0(boolean r3) {
        /*
            r2 = this;
            if (r3 == 0) goto L1c
            android.content.res.Resources r3 = r2.f1030b
            android.content.res.Configuration r3 = r3.getConfiguration()
            int r3 = r3.keyboard
            r0 = 1
            if (r3 == r0) goto L1c
            android.content.Context r3 = r2.f1029a
            android.view.ViewConfiguration r3 = android.view.ViewConfiguration.get(r3)
            android.content.Context r1 = r2.f1029a
            boolean r3 = d0.s0.l(r3, r1)
            if (r3 == 0) goto L1c
            goto L1d
        L1c:
            r0 = 0
        L1d:
            r2.f1032d = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.g.c0(boolean):void");
    }

    private i g(int i10, int i11, int i12, int i13, CharSequence charSequence, int i14) {
        return new i(this, i10, i11, i12, i13, charSequence, i14);
    }

    private void i(boolean z10) {
        if (this.f1051w.isEmpty()) {
            return;
        }
        e0();
        Iterator it = this.f1051w.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            m mVar = (m) weakReference.get();
            if (mVar == null) {
                this.f1051w.remove(weakReference);
            } else {
                mVar.c(z10);
            }
        }
        d0();
    }

    private boolean j(r rVar, m mVar) {
        boolean z10 = false;
        if (this.f1051w.isEmpty()) {
            return false;
        }
        if (mVar != null) {
            z10 = mVar.i(rVar);
        }
        Iterator it = this.f1051w.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            m mVar2 = (m) weakReference.get();
            if (mVar2 == null) {
                this.f1051w.remove(weakReference);
            } else if (!z10) {
                z10 = mVar2.i(rVar);
            }
        }
        return z10;
    }

    private static int n(ArrayList arrayList, int i10) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((i) arrayList.get(size)).f() <= i10) {
                return size + 1;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean A() {
        return this.f1048t;
    }

    Resources C() {
        return this.f1030b;
    }

    public g D() {
        return this;
    }

    public ArrayList E() {
        if (!this.f1036h) {
            return this.f1035g;
        }
        this.f1035g.clear();
        int size = this.f1034f.size();
        for (int i10 = 0; i10 < size; i10++) {
            i iVar = (i) this.f1034f.get(i10);
            if (iVar.isVisible()) {
                this.f1035g.add(iVar);
            }
        }
        this.f1036h = false;
        this.f1039k = true;
        return this.f1035g;
    }

    public boolean F() {
        return this.f1053y;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean G() {
        return this.f1031c;
    }

    public boolean H() {
        return this.f1032d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void I(i iVar) {
        this.f1039k = true;
        K(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void J(i iVar) {
        this.f1036h = true;
        K(true);
    }

    public void K(boolean z10) {
        if (!this.f1045q) {
            if (z10) {
                this.f1036h = true;
                this.f1039k = true;
            }
            i(z10);
            return;
        }
        this.f1046r = true;
        if (z10) {
            this.f1047s = true;
        }
    }

    public boolean L(MenuItem menuItem, int i10) {
        return M(menuItem, null, i10);
    }

    public boolean M(MenuItem menuItem, m mVar, int i10) {
        boolean z10;
        i iVar = (i) menuItem;
        if (iVar == null || !iVar.isEnabled()) {
            return false;
        }
        boolean k10 = iVar.k();
        d0.b b10 = iVar.b();
        if (b10 != null && b10.a()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (iVar.j()) {
            k10 |= iVar.expandActionView();
            if (k10) {
                e(true);
            }
        } else if (!iVar.hasSubMenu() && !z10) {
            if ((i10 & 1) == 0) {
                e(true);
            }
        } else {
            if ((i10 & 4) == 0) {
                e(false);
            }
            if (!iVar.hasSubMenu()) {
                iVar.x(new r(u(), this, iVar));
            }
            r rVar = (r) iVar.getSubMenu();
            if (z10) {
                b10.e(rVar);
            }
            k10 |= j(rVar, mVar);
            if (!k10) {
                e(true);
            }
        }
        return k10;
    }

    public void O(m mVar) {
        Iterator it = this.f1051w.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            m mVar2 = (m) weakReference.get();
            if (mVar2 == null || mVar2 == mVar) {
                this.f1051w.remove(weakReference);
            }
        }
    }

    public void P(Bundle bundle) {
        MenuItem findItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(t());
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = getItem(i10);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((r) item.getSubMenu()).P(bundle);
            }
        }
        int i11 = bundle.getInt("android:menu:expandedactionview");
        if (i11 > 0 && (findItem = findItem(i11)) != null) {
            findItem.expandActionView();
        }
    }

    public void Q(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = getItem(i10);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((r) item.getSubMenu()).Q(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(t(), sparseArray);
        }
    }

    public void R(a aVar) {
        this.f1033e = aVar;
    }

    public g S(int i10) {
        this.f1040l = i10;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void T(MenuItem menuItem) {
        boolean z10;
        int groupId = menuItem.getGroupId();
        int size = this.f1034f.size();
        e0();
        for (int i10 = 0; i10 < size; i10++) {
            i iVar = (i) this.f1034f.get(i10);
            if (iVar.getGroupId() == groupId && iVar.m() && iVar.isCheckable()) {
                if (iVar == menuItem) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                iVar.s(z10);
            }
        }
        d0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g U(int i10) {
        W(0, null, i10, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g V(Drawable drawable) {
        W(0, null, 0, drawable, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g X(int i10) {
        W(i10, null, 0, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g Y(CharSequence charSequence) {
        W(0, charSequence, 0, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g Z(View view) {
        W(0, null, 0, null, view);
        return this;
    }

    protected MenuItem a(int i10, int i11, int i12, CharSequence charSequence) {
        int B = B(i12);
        i g10 = g(i10, i11, i12, B, charSequence, this.f1040l);
        ContextMenu.ContextMenuInfo contextMenuInfo = this.f1041m;
        if (contextMenuInfo != null) {
            g10.v(contextMenuInfo);
        }
        ArrayList arrayList = this.f1034f;
        arrayList.add(n(arrayList, B), g10);
        K(true);
        return g10;
    }

    public void a0(boolean z10) {
        this.f1048t = z10;
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i10, int i11, int i12, ComponentName componentName, Intent[] intentArr, Intent intent, int i13, MenuItem[] menuItemArr) {
        int i14;
        Intent intent2;
        int i15;
        PackageManager packageManager = this.f1029a.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        if (queryIntentActivityOptions != null) {
            i14 = queryIntentActivityOptions.size();
        } else {
            i14 = 0;
        }
        if ((i13 & 1) == 0) {
            removeGroup(i10);
        }
        for (int i16 = 0; i16 < i14; i16++) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i16);
            int i17 = resolveInfo.specificIndex;
            if (i17 < 0) {
                intent2 = intent;
            } else {
                intent2 = intentArr[i17];
            }
            Intent intent3 = new Intent(intent2);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent3.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            MenuItem intent4 = add(i10, i11, i12, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent3);
            if (menuItemArr != null && (i15 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i15] = intent4;
            }
        }
        return i14;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public void b(m mVar) {
        c(mVar, this.f1029a);
    }

    public void b0(boolean z10) {
        this.f1054z = z10;
    }

    public void c(m mVar, Context context) {
        this.f1051w.add(new WeakReference(mVar));
        mVar.h(context, this);
        this.f1039k = true;
    }

    @Override // android.view.Menu
    public void clear() {
        i iVar = this.f1052x;
        if (iVar != null) {
            f(iVar);
        }
        this.f1034f.clear();
        K(true);
    }

    public void clearHeader() {
        this.f1043o = null;
        this.f1042n = null;
        this.f1044p = null;
        K(false);
    }

    @Override // android.view.Menu
    public void close() {
        e(true);
    }

    public void d() {
        a aVar = this.f1033e;
        if (aVar != null) {
            aVar.b(this);
        }
    }

    public void d0() {
        this.f1045q = false;
        if (this.f1046r) {
            this.f1046r = false;
            K(this.f1047s);
        }
    }

    public final void e(boolean z10) {
        if (this.f1049u) {
            return;
        }
        this.f1049u = true;
        Iterator it = this.f1051w.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            m mVar = (m) weakReference.get();
            if (mVar == null) {
                this.f1051w.remove(weakReference);
            } else {
                mVar.b(this, z10);
            }
        }
        this.f1049u = false;
    }

    public void e0() {
        if (!this.f1045q) {
            this.f1045q = true;
            this.f1046r = false;
            this.f1047s = false;
        }
    }

    public boolean f(i iVar) {
        boolean z10 = false;
        if (!this.f1051w.isEmpty() && this.f1052x == iVar) {
            e0();
            Iterator it = this.f1051w.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                m mVar = (m) weakReference.get();
                if (mVar == null) {
                    this.f1051w.remove(weakReference);
                } else {
                    z10 = mVar.e(this, iVar);
                    if (z10) {
                        break;
                    }
                }
            }
            d0();
            if (z10) {
                this.f1052x = null;
            }
        }
        return z10;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i10) {
        MenuItem findItem;
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            i iVar = (i) this.f1034f.get(i11);
            if (iVar.getItemId() == i10) {
                return iVar;
            }
            if (iVar.hasSubMenu() && (findItem = iVar.getSubMenu().findItem(i10)) != null) {
                return findItem;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i10) {
        return (MenuItem) this.f1034f.get(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h(g gVar, MenuItem menuItem) {
        a aVar = this.f1033e;
        if (aVar != null && aVar.a(gVar, menuItem)) {
            return true;
        }
        return false;
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.f1054z) {
            return true;
        }
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (((i) this.f1034f.get(i10)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i10, KeyEvent keyEvent) {
        if (p(i10, keyEvent) != null) {
            return true;
        }
        return false;
    }

    public boolean k(i iVar) {
        boolean z10 = false;
        if (this.f1051w.isEmpty()) {
            return false;
        }
        e0();
        Iterator it = this.f1051w.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            m mVar = (m) weakReference.get();
            if (mVar == null) {
                this.f1051w.remove(weakReference);
            } else {
                z10 = mVar.f(this, iVar);
                if (z10) {
                    break;
                }
            }
        }
        d0();
        if (z10) {
            this.f1052x = iVar;
        }
        return z10;
    }

    public int l(int i10) {
        return m(i10, 0);
    }

    public int m(int i10, int i11) {
        int size = size();
        if (i11 < 0) {
            i11 = 0;
        }
        while (i11 < size) {
            if (((i) this.f1034f.get(i11)).getGroupId() == i10) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public int o(int i10) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            if (((i) this.f1034f.get(i11)).getItemId() == i10) {
                return i11;
            }
        }
        return -1;
    }

    i p(int i10, KeyEvent keyEvent) {
        char numericShortcut;
        ArrayList arrayList = this.f1050v;
        arrayList.clear();
        q(arrayList, i10, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (i) arrayList.get(0);
        }
        boolean G = G();
        for (int i11 = 0; i11 < size; i11++) {
            i iVar = (i) arrayList.get(i11);
            if (G) {
                numericShortcut = iVar.getAlphabeticShortcut();
            } else {
                numericShortcut = iVar.getNumericShortcut();
            }
            char[] cArr = keyData.meta;
            if ((numericShortcut == cArr[0] && (metaState & 2) == 0) || ((numericShortcut == cArr[2] && (metaState & 2) != 0) || (G && numericShortcut == '\b' && i10 == 67))) {
                return iVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i10, int i11) {
        return L(findItem(i10), i11);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i10, KeyEvent keyEvent, int i11) {
        boolean z10;
        i p10 = p(i10, keyEvent);
        if (p10 != null) {
            z10 = L(p10, i11);
        } else {
            z10 = false;
        }
        if ((i11 & 2) != 0) {
            e(true);
        }
        return z10;
    }

    void q(List list, int i10, KeyEvent keyEvent) {
        char numericShortcut;
        int numericModifiers;
        boolean z10;
        boolean G = G();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (!keyEvent.getKeyData(keyData) && i10 != 67) {
            return;
        }
        int size = this.f1034f.size();
        for (int i11 = 0; i11 < size; i11++) {
            i iVar = (i) this.f1034f.get(i11);
            if (iVar.hasSubMenu()) {
                ((g) iVar.getSubMenu()).q(list, i10, keyEvent);
            }
            if (G) {
                numericShortcut = iVar.getAlphabeticShortcut();
            } else {
                numericShortcut = iVar.getNumericShortcut();
            }
            if (G) {
                numericModifiers = iVar.getAlphabeticModifiers();
            } else {
                numericModifiers = iVar.getNumericModifiers();
            }
            if ((modifiers & 69647) == (numericModifiers & 69647)) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10 && numericShortcut != 0) {
                char[] cArr = keyData.meta;
                if ((numericShortcut == cArr[0] || numericShortcut == cArr[2] || (G && numericShortcut == '\b' && i10 == 67)) && iVar.isEnabled()) {
                    list.add(iVar);
                }
            }
        }
    }

    public void r() {
        ArrayList E = E();
        if (!this.f1039k) {
            return;
        }
        Iterator it = this.f1051w.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            m mVar = (m) weakReference.get();
            if (mVar == null) {
                this.f1051w.remove(weakReference);
            } else {
                z10 |= mVar.d();
            }
        }
        if (z10) {
            this.f1037i.clear();
            this.f1038j.clear();
            int size = E.size();
            for (int i10 = 0; i10 < size; i10++) {
                i iVar = (i) E.get(i10);
                if (iVar.l()) {
                    this.f1037i.add(iVar);
                } else {
                    this.f1038j.add(iVar);
                }
            }
        } else {
            this.f1037i.clear();
            this.f1038j.clear();
            this.f1038j.addAll(E());
        }
        this.f1039k = false;
    }

    @Override // android.view.Menu
    public void removeGroup(int i10) {
        int l10 = l(i10);
        if (l10 >= 0) {
            int size = this.f1034f.size() - l10;
            int i11 = 0;
            while (true) {
                int i12 = i11 + 1;
                if (i11 >= size || ((i) this.f1034f.get(l10)).getGroupId() != i10) {
                    break;
                }
                N(l10, false);
                i11 = i12;
            }
            K(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i10) {
        N(o(i10), true);
    }

    public ArrayList s() {
        r();
        return this.f1037i;
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i10, boolean z10, boolean z11) {
        int size = this.f1034f.size();
        for (int i11 = 0; i11 < size; i11++) {
            i iVar = (i) this.f1034f.get(i11);
            if (iVar.getGroupId() == i10) {
                iVar.t(z11);
                iVar.setCheckable(z10);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z10) {
        this.f1053y = z10;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i10, boolean z10) {
        int size = this.f1034f.size();
        for (int i11 = 0; i11 < size; i11++) {
            i iVar = (i) this.f1034f.get(i11);
            if (iVar.getGroupId() == i10) {
                iVar.setEnabled(z10);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i10, boolean z10) {
        int size = this.f1034f.size();
        boolean z11 = false;
        for (int i11 = 0; i11 < size; i11++) {
            i iVar = (i) this.f1034f.get(i11);
            if (iVar.getGroupId() == i10 && iVar.y(z10)) {
                z11 = true;
            }
        }
        if (z11) {
            K(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z10) {
        this.f1031c = z10;
        K(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f1034f.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String t() {
        return "android:menu:actionviewstates";
    }

    public Context u() {
        return this.f1029a;
    }

    public i v() {
        return this.f1052x;
    }

    public Drawable w() {
        return this.f1043o;
    }

    public CharSequence x() {
        return this.f1042n;
    }

    public View y() {
        return this.f1044p;
    }

    public ArrayList z() {
        r();
        return this.f1038j;
    }

    @Override // android.view.Menu
    public MenuItem add(int i10) {
        return a(0, 0, 0, this.f1030b.getString(i10));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i10) {
        return addSubMenu(0, 0, 0, this.f1030b.getString(i10));
    }

    @Override // android.view.Menu
    public MenuItem add(int i10, int i11, int i12, CharSequence charSequence) {
        return a(i10, i11, i12, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i10, int i11, int i12, CharSequence charSequence) {
        i iVar = (i) a(i10, i11, i12, charSequence);
        r rVar = new r(this.f1029a, this, iVar);
        iVar.x(rVar);
        return rVar;
    }

    @Override // android.view.Menu
    public MenuItem add(int i10, int i11, int i12, int i13) {
        return a(i10, i11, i12, this.f1030b.getString(i13));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i10, int i11, int i12, int i13) {
        return addSubMenu(i10, i11, i12, this.f1030b.getString(i13));
    }
}
