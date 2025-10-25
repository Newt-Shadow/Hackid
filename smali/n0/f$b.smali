.class abstract Ln0/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field static final a:Landroidx/datastore/preferences/protobuf/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/q1$b;->k:Landroidx/datastore/preferences/protobuf/q1$b;

    .line 2
    .line 3
    sget-object v1, Landroidx/datastore/preferences/protobuf/q1$b;->m:Landroidx/datastore/preferences/protobuf/q1$b;

    .line 4
    .line 5
    invoke-static {}, Ln0/h;->Z()Ln0/h;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, ""

    .line 10
    .line 11
    invoke-static {v0, v3, v1, v2}, Landroidx/datastore/preferences/protobuf/i0;->d(Landroidx/datastore/preferences/protobuf/q1$b;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/q1$b;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/i0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Ln0/f$b;->a:Landroidx/datastore/preferences/protobuf/i0;

    .line 16
    .line 17
    return-void
.end method
