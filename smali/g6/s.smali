.class final Lg6/s;
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
.method public final bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Ln5/e;Ljava/lang/Object;Lcom/google/android/gms/common/api/f$a;Lcom/google/android/gms/common/api/f$b;)Lcom/google/android/gms/common/api/a$f;
    .locals 7

    .line 1
    check-cast p4, Lcom/google/android/gms/common/api/a$d$a;

    .line 2
    .line 3
    new-instance p4, Ld6/n;

    .line 4
    .line 5
    const-string v5, "locationServices"

    .line 6
    .line 7
    move-object v0, p4

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p5

    .line 11
    move-object v4, p6

    .line 12
    move-object v6, p3

    .line 13
    invoke-direct/range {v0 .. v6}, Ld6/n;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/f$a;Lcom/google/android/gms/common/api/f$b;Ljava/lang/String;Ln5/e;)V

    .line 14
    .line 15
    .line 16
    return-object p4
.end method
