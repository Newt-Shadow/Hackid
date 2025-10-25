.class public Lio/flutter/plugins/googlesignin/GoogleSignInWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/b;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/auth/api/signin/a;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/a;->b(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method hasPermissions(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Scope;)Z
    .locals 0

    .line 1
    filled-new-array {p2}, [Lcom/google/android/gms/common/api/Scope;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/auth/api/signin/a;->d(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;[Lcom/google/android/gms/common/api/Scope;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method requestPermissions(Landroid/app/Activity;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;[Lcom/google/android/gms/common/api/Scope;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/auth/api/signin/a;->e(Landroid/app/Activity;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;[Lcom/google/android/gms/common/api/Scope;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
