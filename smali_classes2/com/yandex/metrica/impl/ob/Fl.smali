.class public Lcom/yandex/metrica/impl/ob/Fl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/yl;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/yl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Fl;->a:Lcom/yandex/metrica/impl/ob/yl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/TextView;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_3

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    :try_start_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x1

    .line 41
    sub-int/2addr v3, v4

    .line 42
    invoke-virtual {p1}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    if-ltz v3, :cond_1

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 53
    .line 54
    if-ne p1, v5, :cond_1

    .line 55
    .line 56
    :cond_0
    move v0, v4

    .line 57
    :cond_1
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 60
    .line 61
    .line 62
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    sub-int v0, v1, p1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    move v0, v1

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move v0, v1

    .line 70
    goto :goto_1

    .line 71
    :catchall_1
    move-exception p1

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Fl;->a:Lcom/yandex/metrica/impl/ob/yl;

    .line 73
    .line 74
    const-string v2, "ui_parsing_visibility"

    .line 75
    .line 76
    invoke-virtual {v1, v2, p1}, Lcom/yandex/metrica/impl/ob/yl;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_1
    return v0
.end method
