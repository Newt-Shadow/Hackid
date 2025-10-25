.class public Lcom/google/android/gms/auth/UserRecoverableAuthException;
.super Ld5/a;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field private final a:Landroid/content/Intent;

.field private final b:Landroid/app/PendingIntent;

.field private final c:Lcom/google/android/gms/auth/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lcom/google/android/gms/auth/b;->a:Lcom/google/android/gms/auth/b;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;Lcom/google/android/gms/auth/b;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;Lcom/google/android/gms/auth/b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ld5/a;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;->b:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;->a:Landroid/content/Intent;

    .line 3
    invoke-static {p4}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/b;

    iput-object p1, p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;->c:Lcom/google/android/gms/auth/b;

    return-void
.end method

.method public static b(Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;)Lcom/google/android/gms/auth/UserRecoverableAuthException;
    .locals 2

    .line 1
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/auth/b;->b:Lcom/google/android/gms/auth/b;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;Lcom/google/android/gms/auth/b;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;->a:Landroid/content/Intent;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;->c:Lcom/google/android/gms/auth/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "Auth"

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v0, "this instantiation of UserRecoverableAuthException doesn\'t support an Intent."

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string v0, "This shouldn\'t happen. Gms API throwing this exception should support the recovery Intent."

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string v0, "Make sure that an intent was provided to class instantiation."

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    const/4 v0, 0x0

    .line 40
    return-object v0

    .line 41
    :cond_3
    new-instance v1, Landroid/content/Intent;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    return-object v1
.end method
