.class public Lcom/yandex/metrica/impl/ob/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ldc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ldc/c;

    invoke-direct {v0}, Ldc/c;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Q;-><init>(Ldc/c;)V

    return-void
.end method

.method constructor <init>(Ldc/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Q;->a:Ldc/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Q;->a:Ldc/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldc/c;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    return-void
.end method
