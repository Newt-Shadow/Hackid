.class public abstract Lo6/b0$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lo6/b0$c;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lo6/b0$d;->b(I)Lo6/b0$c;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public b(I)Lo6/b0$c;
    .locals 1

    .line 1
    const-string v0, "expectedValuesPerKey"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo6/h;->b(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    new-instance v0, Lo6/b0$d$a;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lo6/b0$d$a;-><init>(Lo6/b0$d;I)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method abstract c()Ljava/util/Map;
.end method
