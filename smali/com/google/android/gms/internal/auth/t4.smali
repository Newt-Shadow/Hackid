.class public final synthetic Lcom/google/android/gms/internal/auth/t4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm5/q;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/auth/b;

.field public final synthetic b:Landroid/accounts/Account;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth/b;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/t4;->a:Lcom/google/android/gms/internal/auth/b;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/t4;->b:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/gms/internal/auth/t4;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/auth/t4;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/t4;->a:Lcom/google/android/gms/internal/auth/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/t4;->b:Landroid/accounts/Account;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/auth/t4;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/auth/t4;->d:Landroid/os/Bundle;

    .line 8
    .line 9
    check-cast p1, Lcom/google/android/gms/internal/auth/p4;

    .line 10
    .line 11
    check-cast p2, Lm6/l;

    .line 12
    .line 13
    invoke-virtual {p1}, Ln5/c;->D()Landroid/os/IInterface;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/google/android/gms/internal/auth/s4;

    .line 18
    .line 19
    new-instance v4, Lcom/google/android/gms/internal/auth/w4;

    .line 20
    .line 21
    invoke-direct {v4, v0, p2}, Lcom/google/android/gms/internal/auth/w4;-><init>(Lcom/google/android/gms/internal/auth/b;Lm6/l;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v4, v1, v2, v3}, Lcom/google/android/gms/internal/auth/s4;->h1(Lcom/google/android/gms/internal/auth/r4;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
