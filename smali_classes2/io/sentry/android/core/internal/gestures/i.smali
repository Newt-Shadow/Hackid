.class public abstract Lio/sentry/android/core/internal/gestures/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lio/sentry/android/core/internal/gestures/i;->a:[I

    .line 5
    .line 6
    return-void
.end method

.method static a(Lio/sentry/android/core/SentryAndroidOptions;Landroid/view/View;FFLio/sentry/internal/gestures/b$a;)Lio/sentry/internal/gestures/b;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_5

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/view/View;

    .line 21
    .line 22
    invoke-static {v1, p2, p3}, Lio/sentry/android/core/internal/gestures/i;->d(Landroid/view/View;FF)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    move-object v2, v1

    .line 34
    check-cast v2, Landroid/view/ViewGroup;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ge v3, v4, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-interface {v0, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {p0}, Lio/sentry/s5;->getGestureTargetLocators()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_0

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lio/sentry/internal/gestures/a;

    .line 72
    .line 73
    invoke-interface {v3, v1, p2, p3, p4}, Lio/sentry/internal/gestures/a;->a(Ljava/lang/Object;FFLio/sentry/internal/gestures/b$a;)Lio/sentry/internal/gestures/b;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    sget-object v4, Lio/sentry/internal/gestures/b$a;->CLICKABLE:Lio/sentry/internal/gestures/b$a;

    .line 80
    .line 81
    if-ne p4, v4, :cond_4

    .line 82
    .line 83
    move-object p1, v3

    .line 84
    goto :goto_2

    .line 85
    :cond_4
    sget-object v4, Lio/sentry/internal/gestures/b$a;->SCROLLABLE:Lio/sentry/internal/gestures/b$a;

    .line 86
    .line 87
    if-ne p4, v4, :cond_3

    .line 88
    .line 89
    return-object v3

    .line 90
    :cond_5
    return-object p1
.end method

.method public static b(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    invoke-static {v0}, Lio/sentry/android/core/internal/gestures/i;->c(I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    const-string p0, ""

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    .line 33
    .line 34
    invoke-direct {p0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method private static c(I)Z
    .locals 1

    .line 1
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const v0, 0xffffff

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static d(Landroid/view/View;FF)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Lio/sentry/android/core/internal/gestures/i;->a:[I

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 8
    .line 9
    .line 10
    aget v2, v1, v0

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    aget v1, v1, v3

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    int-to-float v5, v2

    .line 24
    cmpg-float v5, p1, v5

    .line 25
    .line 26
    if-ltz v5, :cond_1

    .line 27
    .line 28
    add-int/2addr v2, v4

    .line 29
    int-to-float v2, v2

    .line 30
    cmpl-float p1, p1, v2

    .line 31
    .line 32
    if-gtz p1, :cond_1

    .line 33
    .line 34
    int-to-float p1, v1

    .line 35
    cmpg-float p1, p2, p1

    .line 36
    .line 37
    if-ltz p1, :cond_1

    .line 38
    .line 39
    add-int/2addr v1, p0

    .line 40
    int-to-float p0, v1

    .line 41
    cmpl-float p0, p2, p0

    .line 42
    .line 43
    if-gtz p0, :cond_1

    .line 44
    .line 45
    move v0, v3

    .line 46
    :cond_1
    return v0
.end method
