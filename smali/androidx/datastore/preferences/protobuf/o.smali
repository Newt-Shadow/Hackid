.class public Landroidx/datastore/preferences/protobuf/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/o$a;
    }
.end annotation


# static fields
.field private static volatile b:Landroidx/datastore/preferences/protobuf/o;

.field static final c:Landroidx/datastore/preferences/protobuf/o;


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/o;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/o;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/datastore/preferences/protobuf/o;->c:Landroidx/datastore/preferences/protobuf/o;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/o;->a:Ljava/util/Map;

    .line 9
    .line 10
    return-void
.end method

.method public static b()Landroidx/datastore/preferences/protobuf/o;
    .locals 2

    .line 1
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/a1;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/datastore/preferences/protobuf/o;->c:Landroidx/datastore/preferences/protobuf/o;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/o;->b:Landroidx/datastore/preferences/protobuf/o;

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    const-class v1, Landroidx/datastore/preferences/protobuf/o;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/o;->b:Landroidx/datastore/preferences/protobuf/o;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Landroidx/datastore/preferences/protobuf/n;->a()Landroidx/datastore/preferences/protobuf/o;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Landroidx/datastore/preferences/protobuf/o;->b:Landroidx/datastore/preferences/protobuf/o;

    .line 24
    .line 25
    :cond_1
    monitor-exit v1

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v0

    .line 30
    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Landroidx/datastore/preferences/protobuf/p0;I)Landroidx/datastore/preferences/protobuf/w$c;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/o;->a:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Landroidx/datastore/preferences/protobuf/o$a;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Landroidx/datastore/preferences/protobuf/o$a;-><init>(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1
.end method
