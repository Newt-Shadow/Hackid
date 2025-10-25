package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.Sh;
import com.yandex.metrica.networktasks.api.RetryPolicyConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class Ui {
    private C0957wl A;
    private C0591hl B;
    private C0591hl C;
    private C0591hl D;
    private C0594i E;
    private boolean F;
    private C0906ui G;
    private Ph H;
    private C0826ra I;
    private List<String> J;
    private Oh K;
    private C0936w0 L;
    private Uh M;
    private C0858si N;
    private Map<String, Object> O;

    /* renamed from: a  reason: collision with root package name */
    private a f11588a;

    /* renamed from: c  reason: collision with root package name */
    private List<String> f11590c;

    /* renamed from: e  reason: collision with root package name */
    private List<String> f11592e;

    /* renamed from: g  reason: collision with root package name */
    private List<String> f11594g;

    /* renamed from: h  reason: collision with root package name */
    private String f11595h;

    /* renamed from: i  reason: collision with root package name */
    private String f11596i;

    /* renamed from: j  reason: collision with root package name */
    private String f11597j;

    /* renamed from: k  reason: collision with root package name */
    private String f11598k;

    /* renamed from: l  reason: collision with root package name */
    private String f11599l;

    /* renamed from: o  reason: collision with root package name */
    private List<C0756oc> f11602o;

    /* renamed from: p  reason: collision with root package name */
    private Long f11603p;

    /* renamed from: q  reason: collision with root package name */
    private List<C0438bi> f11604q;

    /* renamed from: r  reason: collision with root package name */
    private String f11605r;

    /* renamed from: s  reason: collision with root package name */
    private List<String> f11606s;

    /* renamed from: t  reason: collision with root package name */
    private List<String> f11607t;

    /* renamed from: u  reason: collision with root package name */
    private Map<String, List<String>> f11608u;

    /* renamed from: v  reason: collision with root package name */
    private C0882ti f11609v;

    /* renamed from: w  reason: collision with root package name */
    private C0463ci f11610w;

    /* renamed from: x  reason: collision with root package name */
    private RetryPolicyConfig f11611x;

    /* renamed from: z  reason: collision with root package name */
    private Zh f11613z;

    /* renamed from: b  reason: collision with root package name */
    private Sh f11589b = new Sh.a().a();

    /* renamed from: d  reason: collision with root package name */
    private String f11591d = "";

    /* renamed from: f  reason: collision with root package name */
    private String f11593f = "";

    /* renamed from: m  reason: collision with root package name */
    private C0488di f11600m = null;

    /* renamed from: n  reason: collision with root package name */
    private C0413ai f11601n = null;

    /* renamed from: y  reason: collision with root package name */
    private List<Bd> f11612y = new ArrayList();

    /* loaded from: classes2.dex */
    public enum a {
        BAD,
        OK
    }

    public a A() {
        return this.f11588a;
    }

    public RetryPolicyConfig B() {
        return this.f11611x;
    }

    public C0463ci C() {
        return this.f11610w;
    }

    public String D() {
        return this.f11595h;
    }

    public C0488di E() {
        return this.f11600m;
    }

    public C0858si F() {
        return this.N;
    }

    public List<String> G() {
        return this.f11590c;
    }

    public C0882ti H() {
        return this.f11609v;
    }

    public C0906ui I() {
        return this.G;
    }

    public C0591hl J() {
        return this.D;
    }

    public C0591hl K() {
        return this.B;
    }

    public C0957wl L() {
        return this.A;
    }

    public C0591hl M() {
        return this.C;
    }

    public Long N() {
        return this.f11603p;
    }

    public boolean O() {
        return this.F;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Sh sh) {
        this.f11589b = sh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str) {
        this.f11605r = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(List<String> list) {
        this.f11594g = list;
    }

    public String d() {
        return this.f11596i;
    }

    public Sh e() {
        return this.f11589b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(String str) {
        this.f11591d = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(String str) {
        this.f11593f = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(List<String> list) {
        this.f11590c = list;
    }

    public String i() {
        return this.f11597j;
    }

    public List<String> j() {
        return this.f11606s;
    }

    public C0826ra k() {
        return this.I;
    }

    public C0936w0 l() {
        return this.L;
    }

    public Uh m() {
        return this.M;
    }

    public String n() {
        return this.f11599l;
    }

    public String o() {
        return this.f11591d;
    }

    public Zh p() {
        return this.f11613z;
    }

    public List<C0756oc> q() {
        return this.f11602o;
    }

    public List<String> r() {
        return this.f11594g;
    }

    public List<String> s() {
        return this.J;
    }

    public List<String> t() {
        return this.f11607t;
    }

    public Map<String, Object> u() {
        return this.O;
    }

    public List<Bd> v() {
        return this.f11612y;
    }

    public C0413ai w() {
        return this.f11601n;
    }

    public String x() {
        return this.f11593f;
    }

    public List<String> y() {
        return this.f11592e;
    }

    public List<C0438bi> z() {
        return this.f11604q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, boolean z10) {
        this.f11612y.add(new Bd(str, z10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(List<C0756oc> list) {
        this.f11602o = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(String str) {
        this.f11598k = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(String str) {
        this.f11597j = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(String str) {
        this.f11599l = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(List<String> list) {
        this.f11592e = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(List<C0438bi> list) {
        this.f11604q = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(String str) {
        this.f11595h = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        this.f11596i = str;
    }

    public void b(C0591hl c0591hl) {
        this.B = c0591hl;
    }

    public void c(C0591hl c0591hl) {
        this.C = c0591hl;
    }

    public void d(List<String> list) {
        this.J = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(List<String> list) {
        this.f11607t = list;
    }

    public String f() {
        return this.f11605r;
    }

    public Map<String, List<String>> g() {
        return this.f11608u;
    }

    public String h() {
        return this.f11598k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a aVar) {
        this.f11588a = aVar;
    }

    public C0594i b() {
        return this.E;
    }

    public Ph c() {
        return this.H;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C0488di c0488di) {
        this.f11600m = c0488di;
    }

    public void b(Map<String, Object> map) {
        this.O = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C0413ai c0413ai) {
        this.f11601n = c0413ai;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Long l10) {
        this.f11603p = l10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(List<String> list) {
        this.f11606s = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Map<String, List<String>> map) {
        this.f11608u = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C0882ti c0882ti) {
        this.f11609v = c0882ti;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C0463ci c0463ci) {
        this.f11610w = c0463ci;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Zh zh) {
        this.f11613z = zh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(RetryPolicyConfig retryPolicyConfig) {
        this.f11611x = retryPolicyConfig;
    }

    public void a(C0957wl c0957wl) {
        this.A = c0957wl;
    }

    public void a(C0591hl c0591hl) {
        this.D = c0591hl;
    }

    public void a(C0594i c0594i) {
        this.E = c0594i;
    }

    public void a(boolean z10) {
        this.F = z10;
    }

    public void a(C0906ui c0906ui) {
        this.G = c0906ui;
    }

    public void a(Ph ph) {
        this.H = ph;
    }

    public void a(C0826ra c0826ra) {
        this.I = c0826ra;
    }

    public Oh a() {
        return this.K;
    }

    public void a(Oh oh) {
        this.K = oh;
    }

    public void a(C0936w0 c0936w0) {
        this.L = c0936w0;
    }

    public void a(Uh uh) {
        this.M = uh;
    }

    public void a(C0858si c0858si) {
        this.N = c0858si;
    }
}
