.class public abstract Lcom/android/billingclient/api/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j(Landroid/content/Context;)Lcom/android/billingclient/api/d$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/billingclient/api/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/d$a;-><init>(Landroid/content/Context;Lc2/c1;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lc2/a;Lc2/b;)V
.end method

.method public abstract b(Lc2/i;Lc2/j;)V
.end method

.method public abstract c(Lc2/f;)V
.end method

.method public abstract d()V
.end method

.method public abstract e(Lc2/k;Lc2/h;)V
.end method

.method public abstract f(Lc2/d;)V
.end method

.method public abstract g(Ljava/lang/String;)Lcom/android/billingclient/api/h;
.end method

.method public abstract h()Z
.end method

.method public abstract i(Landroid/app/Activity;Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/h;
.end method

.method public abstract k(Lcom/android/billingclient/api/j;Lc2/l;)V
.end method

.method public abstract l(Lc2/p;Lc2/m;)V
.end method

.method public abstract m(Ljava/lang/String;Lc2/m;)V
.end method

.method public abstract n(Lc2/q;Lc2/n;)V
.end method

.method public abstract o(Ljava/lang/String;Lc2/n;)V
.end method

.method public abstract p(Lcom/android/billingclient/api/k;Lc2/r;)V
.end method

.method public abstract q(Landroid/app/Activity;Lc2/e;)Lcom/android/billingclient/api/h;
.end method

.method public abstract r(Lc2/g;)V
.end method
