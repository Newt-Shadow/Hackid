.class public final Lp5/d;
.super Lcom/google/android/gms/common/api/e;
.source "SourceFile"

# interfaces
.implements Ln5/w;


# static fields
.field private static final k:Lcom/google/android/gms/common/api/a$g;

.field private static final l:Lcom/google/android/gms/common/api/a$a;

.field private static final m:Lcom/google/android/gms/common/api/a;

.field public static final synthetic n:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp5/d;->k:Lcom/google/android/gms/common/api/a$g;

    .line 7
    .line 8
    new-instance v1, Lp5/c;

    .line 9
    .line 10
    invoke-direct {v1}, Lp5/c;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lp5/d;->l:Lcom/google/android/gms/common/api/a$a;

    .line 14
    .line 15
    new-instance v2, Lcom/google/android/gms/common/api/a;

    .line 16
    .line 17
    const-string v3, "ClientTelemetry.API"

    .line 18
    .line 19
    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    .line 20
    .line 21
    .line 22
    sput-object v2, Lp5/d;->m:Lcom/google/android/gms/common/api/a;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ln5/x;)V
    .locals 2

    .line 1
    sget-object v0, Lp5/d;->m:Lcom/google/android/gms/common/api/a;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/common/api/e$a;->c:Lcom/google/android/gms/common/api/e$a;

    .line 4
    .line 5
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/e$a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Ln5/u;)Lm6/Task;
    .locals 2

    .line 1
    invoke-static {}, Lm5/u;->a()Lm5/u$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, La6/d;->a:Ll5/d;

    .line 6
    .line 7
    filled-new-array {v1}, [Ll5/d;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lm5/u$a;->d([Ll5/d;)Lm5/u$a;

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lm5/u$a;->c(Z)Lm5/u$a;

    .line 16
    .line 17
    .line 18
    new-instance v1, Lp5/b;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Lp5/b;-><init>(Ln5/u;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lm5/u$a;->b(Lm5/q;)Lm5/u$a;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lm5/u$a;->a()Lm5/u;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/e;->g(Lm5/u;)Lm6/Task;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method
