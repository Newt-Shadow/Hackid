.class public abstract Ln5/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln5/p$a;
    }
.end annotation


# static fields
.field private static final a:Ln5/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln5/k0;

    invoke-direct {v0}, Ln5/k0;-><init>()V

    sput-object v0, Ln5/p;->a:Ln5/n0;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/h;Ln5/p$a;)Lm6/Task;
    .locals 3

    .line 1
    sget-object v0, Ln5/p;->a:Ln5/n0;

    .line 2
    .line 3
    new-instance v1, Lm6/l;

    .line 4
    .line 5
    invoke-direct {v1}, Lm6/l;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ln5/l0;

    .line 9
    .line 10
    invoke-direct {v2, p0, v1, p1, v0}, Ln5/l0;-><init>(Lcom/google/android/gms/common/api/h;Lm6/l;Ln5/p$a;Ln5/n0;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/h;->a(Lcom/google/android/gms/common/api/h$a;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static b(Lcom/google/android/gms/common/api/h;)Lm6/Task;
    .locals 1

    .line 1
    new-instance v0, Ln5/m0;

    .line 2
    .line 3
    invoke-direct {v0}, Ln5/m0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Ln5/p;->a(Lcom/google/android/gms/common/api/h;Ln5/p$a;)Lm6/Task;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
