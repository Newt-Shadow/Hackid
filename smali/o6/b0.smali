.class public abstract Lo6/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/b0$c;,
        Lo6/b0$d;,
        Lo6/b0$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo6/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo6/b0;-><init>()V

    return-void
.end method

.method public static a()Lo6/b0$d;
    .locals 1

    .line 1
    invoke-static {}, Lo6/h0;->b()Lo6/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lo6/b0;->b(Ljava/util/Comparator;)Lo6/b0$d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static b(Ljava/util/Comparator;)Lo6/b0$d;
    .locals 1

    .line 1
    invoke-static {p0}, Ln6/m;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lo6/b0$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lo6/b0$a;-><init>(Ljava/util/Comparator;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
