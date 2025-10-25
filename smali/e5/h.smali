.class final Le5/h;
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
.method public final synthetic b(Landroid/content/Context;Landroid/os/Looper;Ln5/e;Ljava/lang/Object;Lm5/d;Lm5/m;)Lcom/google/android/gms/common/api/a$f;
    .locals 7

    .line 1
    const/4 v4, 0x0

    .line 2
    invoke-static {p4}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    new-instance p4, Lcom/google/android/gms/internal/auth/d;

    .line 6
    .line 7
    move-object v0, p4

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v5, p5

    .line 12
    move-object v6, p6

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/auth/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Ln5/e;Le5/c;Lm5/d;Lm5/m;)V

    .line 14
    .line 15
    .line 16
    return-object p4
.end method
