.class Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityViewEmbedder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectionAccessors"
.end annotation


# instance fields
.field private final childNodeIdsField:Ljava/lang/reflect/Field;

.field private final getChildId:Ljava/lang/reflect/Method;

.field private final getParentNodeId:Ljava/lang/reflect/Method;

.field private final getRecordSourceNodeId:Ljava/lang/reflect/Method;

.field private final getSourceNodeId:Ljava/lang/reflect/Method;

.field private final longArrayGetIndex:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedPrivateApi,PrivateApi"
        }
    .end annotation

    const-string v0, "getSourceNodeId"

    .line 2
    const-class v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v2, "AccessibilityBridge"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-array v5, v3, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v5, "can\'t invoke AccessibilityNodeInfo#getSourceNodeId with reflection"

    .line 4
    invoke-static {v2, v5}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    .line 5
    :goto_0
    :try_start_1
    const-class v6, Landroid/view/accessibility/AccessibilityRecord;

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v0, "can\'t invoke AccessibiiltyRecord#getSourceNodeId with reflection"

    .line 6
    invoke-static {v2, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 7
    :goto_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    const/4 v8, 0x1

    if-gt v6, v7, :cond_0

    :try_start_2
    const-string v6, "getParentNodeId"

    new-array v7, v3, [Ljava/lang/Class;

    .line 8
    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string v6, "can\'t invoke getParentNodeId with reflection"

    .line 9
    invoke-static {v2, v6}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v4

    :goto_2
    :try_start_3
    const-string v7, "getChildId"

    new-array v8, v8, [Ljava/lang/Class;

    .line 10
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v2, v4

    goto :goto_3

    :catch_3
    const-string v1, "can\'t invoke getChildId with reflection"

    .line 11
    invoke-static {v2, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    move-object v2, v1

    :goto_3
    move-object v3, v2

    move-object v4, v6

    goto :goto_4

    :cond_0
    :try_start_4
    const-string v6, "mChildNodeIds"

    .line 12
    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v6, "android.util.LongArray"

    .line 14
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "get"

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v3, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_4

    :catch_4
    const-string v1, "can\'t access childNodeIdsField with reflection"

    .line 15
    invoke-static {v2, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    move-object v2, v1

    move-object v3, v2

    .line 16
    :goto_4
    iput-object v5, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getSourceNodeId:Ljava/lang/reflect/Method;

    .line 17
    iput-object v4, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getParentNodeId:Ljava/lang/reflect/Method;

    .line 18
    iput-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getRecordSourceNodeId:Ljava/lang/reflect/Method;

    .line 19
    iput-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getChildId:Ljava/lang/reflect/Method;

    .line 20
    iput-object v2, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->childNodeIdsField:Ljava/lang/reflect/Field;

    .line 21
    iput-object v3, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->longArrayGetIndex:Ljava/lang/reflect/Method;

    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/view/AccessibilityViewEmbedder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$200(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getVirtualNodeId(J)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$300(Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getParentNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$500(Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getChildId(Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$600(Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getRecordSourceNodeId(Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getChildId(Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;
    .locals 6

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getChildId:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->childNodeIdsField:Ljava/lang/reflect/Field;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->longArrayGetIndex:Ljava/lang/reflect/Method;

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    :cond_0
    return-object v1

    .line 15
    :cond_1
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    const-string v4, "AccessibilityBridge"

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    aput-object p2, v3, v2

    .line 28
    .line 29
    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    return-object p1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    const-string p2, "The getChildId method threw an exception when invoked."

    .line 38
    .line 39
    invoke-static {v4, p2, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_1
    move-exception p1

    .line 44
    const-string p2, "Failed to access getChildId method."

    .line 45
    .line 46
    invoke-static {v4, p2, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :try_start_1
    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->longArrayGetIndex:Ljava/lang/reflect/Method;

    .line 51
    .line 52
    iget-object v5, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->childNodeIdsField:Ljava/lang/reflect/Field;

    .line 53
    .line 54
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-array v3, v3, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    aput-object p2, v3, v2

    .line 65
    .line 66
    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Ljava/lang/Long;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide p1

    .line 76
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 80
    return-object p1

    .line 81
    :catch_2
    move-exception p1

    .line 82
    goto :goto_0

    .line 83
    :catch_3
    move-exception p1

    .line 84
    :goto_0
    const-string p2, "The longArrayGetIndex method threw an exception when invoked."

    .line 85
    .line 86
    invoke-static {v4, p2, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_4
    move-exception p1

    .line 91
    const-string p2, "Failed to access longArrayGetIndex method or the childNodeId field."

    .line 92
    .line 93
    invoke-static {v4, p2, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    return-object v1
.end method

.method private getParentNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 3

    .line 1
    const-string v0, "AccessibilityBridge"

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getParentNodeId:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Long;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p1

    .line 25
    :catch_0
    move-exception v1

    .line 26
    const-string v2, "The getParentNodeId method threw an exception when invoked."

    .line 27
    .line 28
    invoke-static {v0, v2, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception v1

    .line 33
    const-string v2, "Failed to access getParentNodeId method."

    .line 34
    .line 35
    invoke-static {v0, v2, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_0
    invoke-static {p1}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->yoinkParentIdFromParcel(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method private getRecordSourceNodeId(Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;
    .locals 4

    .line 1
    const-string v0, "AccessibilityBridge"

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getRecordSourceNodeId:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    const/4 v3, 0x0

    .line 10
    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    return-object p1

    .line 19
    :catch_0
    move-exception p1

    .line 20
    const-string v1, "The getRecordSourceNodeId method threw an exception when invoked."

    .line 21
    .line 22
    invoke-static {v0, v1, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_1
    move-exception p1

    .line 27
    const-string v1, "Failed to access the getRecordSourceNodeId method."

    .line 28
    .line 29
    invoke-static {v0, v1, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-object v2
.end method

.method private getSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 4

    .line 1
    const-string v0, "AccessibilityBridge"

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getSourceNodeId:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    const/4 v3, 0x0

    .line 10
    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    return-object p1

    .line 19
    :catch_0
    move-exception p1

    .line 20
    const-string v1, "The getSourceNodeId method threw an exception when invoked."

    .line 21
    .line 22
    invoke-static {v0, v1, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_1
    move-exception p1

    .line 27
    const-string v1, "Failed to access getSourceNodeId method."

    .line 28
    .line 29
    invoke-static {v0, v1, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-object v2
.end method

.method private static getVirtualNodeId(J)I
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static isBitSet(JI)Z
    .locals 2

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p2

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static yoinkParentIdFromParcel(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    const-string p0, "AccessibilityBridge"

    .line 9
    .line 10
    const-string v0, "Unexpected Android version. Unable to find the parent ID."

    .line 11
    .line 12
    invoke-static {p0, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_0
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    invoke-static {v3, v4, v1}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->isBitSet(JI)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 45
    .line 46
    .line 47
    :cond_1
    const/4 p0, 0x1

    .line 48
    invoke-static {v3, v4, p0}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->isBitSet(JI)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 55
    .line 56
    .line 57
    :cond_2
    const/4 p0, 0x2

    .line 58
    invoke-static {v3, v4, p0}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->isBitSet(JI)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 65
    .line 66
    .line 67
    :cond_3
    const/4 p0, 0x3

    .line 68
    invoke-static {v3, v4, p0}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->isBitSet(JI)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :cond_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 83
    .line 84
    .line 85
    return-object v2
.end method
