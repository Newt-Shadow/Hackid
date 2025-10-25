.class public Lcom/google/crypto/tink/shaded/protobuf/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/p$a;
    }
.end annotation


# static fields
.field private static b:Z = true

.field private static volatile c:Lcom/google/crypto/tink/shaded/protobuf/p;

.field static final d:Lcom/google/crypto/tink/shaded/protobuf/p;


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/p;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/p;->d:Lcom/google/crypto/tink/shaded/protobuf/p;

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
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/p;->a:Ljava/util/Map;

    .line 9
    .line 10
    return-void
.end method

.method public static b()Lcom/google/crypto/tink/shaded/protobuf/p;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/p;->c:Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/p;->c:Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/p;->b:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/p;->d:Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 22
    .line 23
    :goto_0
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/p;->c:Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 24
    .line 25
    :cond_1
    monitor-exit v1

    .line 26
    goto :goto_1

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
    :goto_1
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/crypto/tink/shaded/protobuf/o0;I)Lcom/google/crypto/tink/shaded/protobuf/x$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/p;->a:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/p$a;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p$a;-><init>(Ljava/lang/Object;I)V

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
