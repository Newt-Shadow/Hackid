.class Lcom/yandex/metrica/impl/ob/m2$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/D1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "s"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/R7;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/R7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$s;->a:Lcom/yandex/metrica/impl/ob/R7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$s;->a:Lcom/yandex/metrica/impl/ob/R7;

    .line 2
    .line 3
    const-string v0, "notification_cache_state"

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/R7;->b(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
