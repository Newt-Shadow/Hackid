.class public final synthetic Lcom/google/android/gms/internal/auth/u4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm5/q;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/auth/b;

.field public final synthetic b:Lcom/google/android/gms/internal/auth/g;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth/b;Lcom/google/android/gms/internal/auth/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/u4;->a:Lcom/google/android/gms/internal/auth/b;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/u4;->b:Lcom/google/android/gms/internal/auth/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/u4;->a:Lcom/google/android/gms/internal/auth/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/u4;->b:Lcom/google/android/gms/internal/auth/g;

    .line 4
    .line 5
    check-cast p1, Lcom/google/android/gms/internal/auth/p4;

    .line 6
    .line 7
    check-cast p2, Lm6/l;

    .line 8
    .line 9
    invoke-virtual {p1}, Ln5/c;->D()Landroid/os/IInterface;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/auth/s4;

    .line 14
    .line 15
    new-instance v2, Lcom/google/android/gms/internal/auth/x4;

    .line 16
    .line 17
    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/auth/x4;-><init>(Lcom/google/android/gms/internal/auth/b;Lm6/l;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/auth/s4;->g1(Lm5/f;Lcom/google/android/gms/internal/auth/g;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
