.class public final Lcom/yandex/metrica/impl/ob/pi$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/pi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

.field private final b:Lcom/yandex/metrica/impl/ob/a8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 2
    const-class v0, Lcom/yandex/metrica/impl/ob/qi;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/fa$b;->a(Ljava/lang/Class;)Lcom/yandex/metrica/impl/ob/fa;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/fa;->a(Landroid/content/Context;)Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    move-result-object p1

    const-string v0, "StorageFactory.Provider.\u2026ass.java).create(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    const-string v1, "GlobalServiceLocator.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->w()Lcom/yandex/metrica/impl/ob/e8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/e8;->a()Lcom/yandex/metrica/impl/ob/a8;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/pi$b;-><init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/a8;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/a8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/pi$b;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/pi$b;->b:Lcom/yandex/metrica/impl/ob/a8;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/metrica/impl/ob/pi;
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/pi;

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/pi$b;->b:Lcom/yandex/metrica/impl/ob/a8;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a8;->a()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/pi$b;->b:Lcom/yandex/metrica/impl/ob/a8;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/a8;->b()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/pi$b;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    invoke-interface {v3}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->read()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "modelStorage.read()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/yandex/metrica/impl/ob/qi;

    const/4 v4, 0x0

    .line 5
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/pi;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/qi;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/pi$b;->b:Lcom/yandex/metrica/impl/ob/a8;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/a8;->a(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/pi$b;->b:Lcom/yandex/metrica/impl/ob/a8;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/a8;->b(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/pi$b;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/pi;->a(Lcom/yandex/metrica/impl/ob/pi;)Lcom/yandex/metrica/impl/ob/qi;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    return-void
.end method
