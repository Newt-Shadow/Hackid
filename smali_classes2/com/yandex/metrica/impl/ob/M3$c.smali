.class Lcom/yandex/metrica/impl/ob/M3$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/M3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/I3;

.field private final b:Lcom/yandex/metrica/impl/ob/ja;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/yandex/metrica/impl/ob/M3$c;-><init>(Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/ja;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/ja;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/M3$c;->a:Lcom/yandex/metrica/impl/ob/I3;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/M3$c;->b:Lcom/yandex/metrica/impl/ob/ja;

    return-void
.end method


# virtual methods
.method a()Lcom/yandex/metrica/impl/ob/c9;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/c9;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/M3$c;->b:Lcom/yandex/metrica/impl/ob/ja;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/M3$c;->a:Lcom/yandex/metrica/impl/ob/I3;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/ja;->b(Lcom/yandex/metrica/impl/ob/I3;)Lcom/yandex/metrica/impl/ob/S7;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/c9;-><init>(Lcom/yandex/metrica/impl/ob/S7;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method b()Lcom/yandex/metrica/impl/ob/a9;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/a9;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/M3$c;->b:Lcom/yandex/metrica/impl/ob/ja;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/M3$c;->a:Lcom/yandex/metrica/impl/ob/I3;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/ja;->b(Lcom/yandex/metrica/impl/ob/I3;)Lcom/yandex/metrica/impl/ob/S7;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/a9;-><init>(Lcom/yandex/metrica/impl/ob/S7;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
