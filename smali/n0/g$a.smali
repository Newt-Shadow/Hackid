.class public final Ln0/g$a;
.super Landroidx/datastore/preferences/protobuf/w$a;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/q0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Ln0/g;->O()Ln0/g;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/w$a;-><init>(Landroidx/datastore/preferences/protobuf/w;)V

    return-void
.end method

.method synthetic constructor <init>(Ln0/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln0/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public r(Ljava/lang/Iterable;)Ln0/g$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/w$a;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/w$a;->b:Landroidx/datastore/preferences/protobuf/w;

    .line 5
    .line 6
    check-cast v0, Ln0/g;

    .line 7
    .line 8
    invoke-static {v0, p1}, Ln0/g;->P(Ln0/g;Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
