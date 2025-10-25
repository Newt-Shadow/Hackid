.class public abstract Ltd/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lyd/f0;

.field private static final b:Lyd/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyd/f0;

    .line 2
    .line 3
    const-string v1, "REMOVED_TASK"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lyd/f0;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ltd/h1;->a:Lyd/f0;

    .line 9
    .line 10
    new-instance v0, Lyd/f0;

    .line 11
    .line 12
    const-string v1, "CLOSED_EMPTY"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lyd/f0;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Ltd/h1;->b:Lyd/f0;

    .line 18
    .line 19
    return-void
.end method

.method public static final synthetic a()Lyd/f0;
    .locals 1

    .line 1
    sget-object v0, Ltd/h1;->b:Lyd/f0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()Lyd/f0;
    .locals 1

    .line 1
    sget-object v0, Ltd/h1;->a:Lyd/f0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final c(J)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x8637bd05af6L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p0

    :goto_0
    return-wide v0
.end method
