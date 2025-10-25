.class public Lcom/yandex/metrica/impl/ob/A0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/u2;

.field private final b:Lcom/yandex/metrica/impl/ob/F;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/u2;

    const-string v1, "com.yandex.android.appmetrica.build_id"

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/u2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/yandex/metrica/impl/ob/F;

    const-string v2, "com.yandex.android.appmetrica.is_offline"

    invoke-direct {v1, p1, v2}, Lcom/yandex/metrica/impl/ob/F;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/A0;-><init>(Lcom/yandex/metrica/impl/ob/u2;Lcom/yandex/metrica/impl/ob/F;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/u2;Lcom/yandex/metrica/impl/ob/F;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/A0;->a:Lcom/yandex/metrica/impl/ob/u2;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/A0;->b:Lcom/yandex/metrica/impl/ob/F;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A0;->a:Lcom/yandex/metrica/impl/ob/u2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/V1;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public b()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A0;->b:Lcom/yandex/metrica/impl/ob/F;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/V1;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    return-object v0
.end method
