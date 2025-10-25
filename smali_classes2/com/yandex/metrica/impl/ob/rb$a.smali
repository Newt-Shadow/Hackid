.class public Lcom/yandex/metrica/impl/ob/rb$a;
.super Lcom/yandex/metrica/impl/ob/rb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/rb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/rb;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b(Landroid/content/pm/FeatureInfo;)Lcom/yandex/metrica/impl/ob/sb;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/sb;

    .line 2
    .line 3
    iget-object v1, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p1, Landroid/content/pm/FeatureInfo;->version:I

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/rb;->c(Landroid/content/pm/FeatureInfo;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-direct {v0, v1, v2, p1}, Lcom/yandex/metrica/impl/ob/sb;-><init>(Ljava/lang/String;IZ)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
