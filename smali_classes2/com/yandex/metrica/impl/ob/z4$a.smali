.class Lcom/yandex/metrica/impl/ob/z4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/z4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/D4$a;)Lcom/yandex/metrica/impl/ob/A4;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/A4;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/D4$b;

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/I3;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v1, p1, p2}, Lcom/yandex/metrica/impl/ob/D4$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, p3, p4}, Lcom/yandex/metrica/impl/ob/A4;-><init>(Lcom/yandex/metrica/impl/ob/D4$b;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/D4$a;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
