.class public final Lcom/google/gson/internal/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Z

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Map;ZLjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/gson/internal/u;->a:Ljava/util/Map;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/gson/internal/u;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/gson/internal/u;->c:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method

.method private static synthetic A()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic B()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic C()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic D()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic E()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic F()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic G()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/internal/y;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/internal/y;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic H()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic I(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 2
    .line 3
    const-string v1, "Invalid EnumSet type: "

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x0

    .line 15
    aget-object v0, v0, v2

    .line 16
    .line 17
    instance-of v2, v0, Ljava/lang/Class;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    check-cast v0, Ljava/lang/Class;

    .line 22
    .line 23
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    new-instance v0, Lcom/google/gson/j;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v0, p0}, Lcom/google/gson/j;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    new-instance v0, Lcom/google/gson/j;

    .line 54
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {v0, p0}, Lcom/google/gson/j;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0
.end method

.method private static synthetic J(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 2
    .line 3
    const-string v1, "Invalid EnumMap type: "

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x0

    .line 15
    aget-object v0, v0, v2

    .line 16
    .line 17
    instance-of v2, v0, Ljava/lang/Class;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    new-instance p0, Ljava/util/EnumMap;

    .line 22
    .line 23
    check-cast v0, Ljava/lang/Class;

    .line 24
    .line 25
    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    new-instance v0, Lcom/google/gson/j;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v0, p0}, Lcom/google/gson/j;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    new-instance v0, Lcom/google/gson/j;

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {v0, p0}, Lcom/google/gson/j;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0
.end method

.method private static synthetic K(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/gson/internal/g0;->a:Lcom/google/gson/internal/g0;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/gson/internal/g0;->d(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "Unable to create instance of "

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem."

    .line 25
    .line 26
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw v1
.end method

.method private static synthetic L(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/gson/j;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method private static M(Ljava/lang/Class;Lcom/google/gson/s;)Lcom/google/gson/internal/a0;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :try_start_0
    new-array v2, v0, [Ljava/lang/Class;

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 17
    .line 18
    .line 19
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    sget-object v3, Lcom/google/gson/s;->a:Lcom/google/gson/s;

    .line 21
    .line 22
    if-eq p1, v3, :cond_1

    .line 23
    .line 24
    invoke-static {v2, v1}, Lcom/google/gson/internal/d0;->a(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    sget-object v1, Lcom/google/gson/s;->d:Lcom/google/gson/s;

    .line 31
    .line 32
    if-ne p1, v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getModifiers()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    :cond_1
    const/4 v0, 0x1

    .line 45
    :cond_2
    if-nez v0, :cond_3

    .line 46
    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v0, "Unable to invoke no-args constructor of "

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p0, "; constructor is not accessible and ReflectionAccessFilter does not permit making it accessible. Register an InstanceCreator or a TypeAdapter for this type, change the visibility of the constructor or adjust the access filter."

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    new-instance p1, Lcom/google/gson/internal/i;

    .line 70
    .line 71
    invoke-direct {p1, p0}, Lcom/google/gson/internal/i;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_3
    if-ne p1, v3, :cond_4

    .line 76
    .line 77
    invoke-static {v2}, Lb9/a;->p(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    if-eqz p0, :cond_4

    .line 82
    .line 83
    new-instance p1, Lcom/google/gson/internal/j;

    .line 84
    .line 85
    invoke-direct {p1, p0}, Lcom/google/gson/internal/j;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :cond_4
    new-instance p0, Lcom/google/gson/internal/k;

    .line 90
    .line 91
    invoke-direct {p0, v2}, Lcom/google/gson/internal/k;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 92
    .line 93
    .line 94
    return-object p0

    .line 95
    :catch_0
    return-object v1
.end method

.method private static N(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/a0;
    .locals 1

    .line 1
    const-class v0, Ljava/util/Collection;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    const-class p0, Ljava/util/SortedSet;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    new-instance p0, Lcom/google/gson/internal/m;

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/google/gson/internal/m;-><init>()V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    const-class p0, Ljava/util/Set;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    new-instance p0, Lcom/google/gson/internal/n;

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/google/gson/internal/n;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    const-class p0, Ljava/util/Queue;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    new-instance p0, Lcom/google/gson/internal/o;

    .line 46
    .line 47
    invoke-direct {p0}, Lcom/google/gson/internal/o;-><init>()V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_2
    new-instance p0, Lcom/google/gson/internal/p;

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/google/gson/internal/p;-><init>()V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_3
    const-class v0, Ljava/util/Map;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_8

    .line 64
    .line 65
    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    new-instance p0, Lcom/google/gson/internal/q;

    .line 74
    .line 75
    invoke-direct {p0}, Lcom/google/gson/internal/q;-><init>()V

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_4
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    new-instance p0, Lcom/google/gson/internal/r;

    .line 88
    .line 89
    invoke-direct {p0}, Lcom/google/gson/internal/r;-><init>()V

    .line 90
    .line 91
    .line 92
    return-object p0

    .line 93
    :cond_5
    const-class v0, Ljava/util/SortedMap;

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    new-instance p0, Lcom/google/gson/internal/s;

    .line 102
    .line 103
    invoke-direct {p0}, Lcom/google/gson/internal/s;-><init>()V

    .line 104
    .line 105
    .line 106
    return-object p0

    .line 107
    :cond_6
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    .line 108
    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 112
    .line 113
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    const/4 p1, 0x0

    .line 118
    aget-object p0, p0, p1

    .line 119
    .line 120
    invoke-static {p0}, Lcom/google/gson/reflect/a;->b(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/a;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p0}, Lcom/google/gson/reflect/a;->c()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    const-class p1, Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-nez p0, :cond_7

    .line 135
    .line 136
    new-instance p0, Lcom/google/gson/internal/t;

    .line 137
    .line 138
    invoke-direct {p0}, Lcom/google/gson/internal/t;-><init>()V

    .line 139
    .line 140
    .line 141
    return-object p0

    .line 142
    :cond_7
    new-instance p0, Lcom/google/gson/internal/d;

    .line 143
    .line 144
    invoke-direct {p0}, Lcom/google/gson/internal/d;-><init>()V

    .line 145
    .line 146
    .line 147
    return-object p0

    .line 148
    :cond_8
    const/4 p0, 0x0

    .line 149
    return-object p0
.end method

.method private static O(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/a0;
    .locals 1

    .line 1
    const-class v0, Ljava/util/EnumSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/google/gson/internal/g;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/google/gson/internal/g;-><init>(Ljava/lang/reflect/Type;)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    const-class v0, Ljava/util/EnumMap;

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    new-instance p1, Lcom/google/gson/internal/h;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/google/gson/internal/h;-><init>(Ljava/lang/reflect/Type;)V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method private P(Ljava/lang/Class;)Lcom/google/gson/internal/a0;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/gson/internal/u;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/gson/internal/e;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/google/gson/internal/e;-><init>(Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "Unable to create instance of "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem."

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    array-length p1, p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, " Or adjust your R8 configuration to keep the no-args constructor of the class."

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_1
    new-instance p1, Lcom/google/gson/internal/f;

    .line 58
    .line 59
    invoke-direct {p1, v0}, Lcom/google/gson/internal/f;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object p1
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/gson/internal/u;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/gson/internal/u;->I(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/gson/internal/u;->J(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/gson/internal/u;->K(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/gson/internal/u;->F()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/gson/internal/u;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/gson/internal/u;->y(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/gson/internal/u;->z()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/gson/internal/u;->H()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic j(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/gson/internal/u;->L(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/gson/internal/u;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/gson/internal/u;->G()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic m(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/gson/internal/u;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/gson/internal/u;->D()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic o()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/gson/internal/u;->C()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic p(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/gson/internal/u;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/gson/internal/u;->E()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic r()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/gson/internal/u;->A()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static s(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "Interfaces can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, "Abstract classes can\'t be instantiated! Adjust the R8 configuration or register an InstanceCreator or a TypeAdapter for this type. Class name: "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p0, "\nSee "

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, "r8-abstract-class"

    .line 62
    .line 63
    invoke-static {p0}, Lcom/google/gson/internal/f0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_1
    const/4 p0, 0x0

    .line 76
    return-object p0
.end method

.method private static synthetic u(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/gson/j;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method private static synthetic v(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/gson/j;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method private static synthetic w(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/gson/j;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method private static synthetic x(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/gson/j;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method private static synthetic y(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;
    .locals 5

    .line 1
    const-string v0, "\' with no args"

    .line 2
    .line 3
    const-string v1, "Failed to invoke constructor \'"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    invoke-static {p0}, Lb9/a;->e(Ljava/lang/IllegalAccessException;)Ljava/lang/RuntimeException;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    throw p0

    .line 19
    :catch_1
    move-exception v2

    .line 20
    new-instance v3, Ljava/lang/RuntimeException;

    .line 21
    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lb9/a;->c(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {v3, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw v3

    .line 52
    :catch_2
    move-exception v2

    .line 53
    new-instance v3, Ljava/lang/RuntimeException;

    .line 54
    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Lb9/a;->c(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-direct {v3, p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw v3
.end method

.method private static synthetic z()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public t(Lcom/google/gson/reflect/a;)Lcom/google/gson/internal/a0;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/gson/reflect/a;->d()Ljava/lang/reflect/Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/gson/reflect/a;->c()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/google/gson/internal/u;->a:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/gson/internal/u;->a:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/google/gson/internal/u;->O(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/a0;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/google/gson/internal/u;->c:Ljava/util/List;

    .line 35
    .line 36
    invoke-static {v1, p1}, Lcom/google/gson/internal/d0;->b(Ljava/util/List;Ljava/lang/Class;)Lcom/google/gson/s;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {p1, v1}, Lcom/google/gson/internal/u;->M(Ljava/lang/Class;Lcom/google/gson/s;)Lcom/google/gson/internal/a0;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_1
    invoke-static {v0, p1}, Lcom/google/gson/internal/u;->N(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/a0;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_2
    invoke-static {p1}, Lcom/google/gson/internal/u;->s(Ljava/lang/Class;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    new-instance p1, Lcom/google/gson/internal/c;

    .line 61
    .line 62
    invoke-direct {p1, v0}, Lcom/google/gson/internal/c;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_3
    sget-object v0, Lcom/google/gson/s;->a:Lcom/google/gson/s;

    .line 67
    .line 68
    if-ne v1, v0, :cond_4

    .line 69
    .line 70
    invoke-direct {p0, p1}, Lcom/google/gson/internal/u;->P(Ljava/lang/Class;)Lcom/google/gson/internal/a0;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v1, "Unable to create instance of "

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p1, "; ReflectionAccessFilter does not permit using reflection or Unsafe. Register an InstanceCreator or a TypeAdapter for this type or adjust the access filter to allow using reflection."

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    new-instance v0, Lcom/google/gson/internal/l;

    .line 98
    .line 99
    invoke-direct {v0, p1}, Lcom/google/gson/internal/l;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/u;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
