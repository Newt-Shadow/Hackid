.class public abstract Landroidx/datastore/preferences/protobuf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/p0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/a$a;
    }
.end annotation


# instance fields
.field protected memoizedHashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/datastore/preferences/protobuf/a;->memoizedHashCode:I

    .line 6
    .line 7
    return-void
.end method

.method protected static e(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/a$a;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method abstract f(Landroidx/datastore/preferences/protobuf/e1;)I
.end method

.method g()Landroidx/datastore/preferences/protobuf/k1;
    .locals 1

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/k1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/k1;-><init>(Landroidx/datastore/preferences/protobuf/p0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public h(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/p0;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/j;->C(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/j;->Y(Ljava/io/OutputStream;I)Landroidx/datastore/preferences/protobuf/j;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p0, p1}, Landroidx/datastore/preferences/protobuf/p0;->d(Landroidx/datastore/preferences/protobuf/j;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/j;->V()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
