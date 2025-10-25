.class public abstract Lo6/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Comparator;)Lo6/h0;
    .locals 1

    .line 1
    instance-of v0, p0, Lo6/h0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lo6/h0;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lo6/j;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lo6/j;-><init>(Ljava/util/Comparator;)V

    .line 11
    .line 12
    .line 13
    move-object p0, v0

    .line 14
    :goto_0
    return-object p0
.end method

.method public static b()Lo6/h0;
    .locals 1

    .line 1
    sget-object v0, Lo6/e0;->a:Lo6/e0;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public c(Ln6/g;)Lo6/h0;
    .locals 1

    .line 1
    new-instance v0, Lo6/g;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0}, Lo6/g;-><init>(Ln6/g;Lo6/h0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method public d()Lo6/h0;
    .locals 1

    .line 1
    new-instance v0, Lo6/n0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lo6/n0;-><init>(Lo6/h0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
