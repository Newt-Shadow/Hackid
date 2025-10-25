.class public abstract Ly6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Le7/j0;

.field public static final c:Le7/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ly6/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ly6/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ly6/a;->d()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Ly6/b;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {}, Le7/j0;->V()Le7/j0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Ly6/b;->b:Le7/j0;

    .line 17
    .line 18
    invoke-static {}, Le7/j0;->V()Le7/j0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Ly6/b;->c:Le7/j0;

    .line 23
    .line 24
    :try_start_0
    invoke-static {}, Ly6/b;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw v1
.end method

.method public static a()V
    .locals 1

    .line 1
    invoke-static {}, Ly6/c;->e()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lw6/a;->a()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    invoke-static {v0}, Ly6/a;->m(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
