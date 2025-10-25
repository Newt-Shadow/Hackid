.class final Lcom/google/android/gms/internal/auth/p4;
.super Ln5/h;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ln5/e;Lm5/d;Lm5/m;)V
    .locals 7

    .line 1
    const/16 v3, 0xe0

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    move-object v6, p5

    .line 9
    invoke-direct/range {v0 .. v6}, Ln5/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILn5/e;Lm5/d;Lm5/m;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method protected final E()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.auth.account.data.IGoogleAuthService"

    return-object v0
.end method

.method protected final F()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.auth.account.authapi.START"

    return-object v0
.end method

.method protected final I()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final S()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "GoogleAuthSvcClientImpl"

    .line 6
    .line 7
    const-string v2, "GoogleAuthServiceClientImpl disconnected with reason: "

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1}, Ln5/c;->c(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final j()I
    .locals 1

    .line 1
    const v0, 0x1110e58

    return v0
.end method

.method protected final synthetic s(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "com.google.android.gms.auth.account.data.IGoogleAuthService"

    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/google/android/gms/internal/auth/s4;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move-object p1, v0

    .line 16
    check-cast p1, Lcom/google/android/gms/internal/auth/s4;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/auth/s4;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/auth/s4;-><init>(Landroid/os/IBinder;)V

    .line 22
    .line 23
    .line 24
    move-object p1, v0

    .line 25
    :goto_0
    return-object p1
.end method

.method public final v()[Ll5/d;
    .locals 3

    .line 1
    sget-object v0, Ld5/e;->l:Ll5/d;

    .line 2
    .line 3
    sget-object v1, Ld5/e;->k:Ll5/d;

    .line 4
    .line 5
    sget-object v2, Ld5/e;->a:Ll5/d;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Ll5/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
