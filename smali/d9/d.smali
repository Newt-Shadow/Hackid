.class public final Ld9/d;
.super Ld9/m;
.source "SourceFile"


# static fields
.field private static final c:Ld9/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld9/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ld9/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld9/d;->c:Ld9/d;

    .line 7
    .line 8
    sget-object v1, Ld9/m;->b:[Ljava/lang/StackTraceElement;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld9/m;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Ld9/d;
    .locals 1

    .line 1
    sget-boolean v0, Ld9/m;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ld9/d;

    .line 6
    .line 7
    invoke-direct {v0}, Ld9/d;-><init>()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Ld9/d;->c:Ld9/d;

    .line 12
    .line 13
    :goto_0
    return-object v0
.end method
