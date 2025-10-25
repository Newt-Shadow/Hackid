.class final Le5/e;
.super Lcom/google/android/gms/common/api/a$a;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Ln5/e;Ljava/lang/Object;Lcom/google/android/gms/common/api/f$a;Lcom/google/android/gms/common/api/f$b;)Lcom/google/android/gms/common/api/a$f;
    .locals 7

    .line 1
    move-object v4, p4

    .line 2
    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 3
    .line 4
    new-instance p4, Li5/i;

    .line 5
    .line 6
    move-object v0, p4

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v3, p3

    .line 10
    move-object v5, p5

    .line 11
    move-object v6, p6

    .line 12
    invoke-direct/range {v0 .. v6}, Li5/i;-><init>(Landroid/content/Context;Landroid/os/Looper;Ln5/e;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/common/api/f$a;Lcom/google/android/gms/common/api/f$b;)V

    .line 13
    .line 14
    .line 15
    return-object p4
.end method
