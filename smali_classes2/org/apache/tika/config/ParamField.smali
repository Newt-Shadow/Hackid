.class public Lorg/apache/tika/config/ParamField;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Ljava/lang/String; = "#default"

.field private static final PRIMITIVE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private field:Ljava/lang/reflect/Field;

.field private final name:Ljava/lang/String;

.field private final required:Z

.field private setter:Ljava/lang/reflect/Method;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/tika/config/ParamField$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/tika/config/ParamField$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/tika/config/ParamField;->PRIMITIVE_MAP:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/AccessibleObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Ljava/lang/reflect/Field;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Ljava/lang/reflect/Field;

    .line 10
    .line 11
    iput-object v0, p0, Lorg/apache/tika/config/ParamField;->field:Ljava/lang/reflect/Field;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v0, p1

    .line 15
    check-cast v0, Ljava/lang/reflect/Method;

    .line 16
    .line 17
    iput-object v0, p0, Lorg/apache/tika/config/ParamField;->setter:Ljava/lang/reflect/Method;

    .line 18
    .line 19
    :goto_0
    const-class v0, Lorg/apache/tika/config/Field;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lorg/apache/tika/config/Field;

    .line 26
    .line 27
    invoke-interface {p1}, Lorg/apache/tika/config/Field;->required()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput-boolean v0, p0, Lorg/apache/tika/config/ParamField;->required:Z

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lorg/apache/tika/config/ParamField;->retrieveParamName(Lorg/apache/tika/config/Field;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lorg/apache/tika/config/ParamField;->name:Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {p0}, Lorg/apache/tika/config/ParamField;->retrieveType()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lorg/apache/tika/config/ParamField;->type:Ljava/lang/Class;

    .line 44
    .line 45
    return-void
.end method

.method private retrieveParamName(Lorg/apache/tika/config/Field;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-interface {p1}, Lorg/apache/tika/config/Field;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "#default"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lorg/apache/tika/config/ParamField;->field:Ljava/lang/reflect/Field;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lorg/apache/tika/config/ParamField;->setter:Ljava/lang/reflect/Method;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "set"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x3

    .line 41
    if-le v0, v1, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x4

    .line 44
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p0, Lorg/apache/tika/config/ParamField;->setter:Ljava/lang/reflect/Method;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-interface {p1}, Lorg/apache/tika/config/Field;->name()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    :goto_0
    return-object p1
.end method

.method private retrieveType()Ljava/lang/Class;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/tika/config/ParamField;->field:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/apache/tika/config/ParamField;->setter:Ljava/lang/reflect/Method;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    array-length v1, v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v1, v2, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lorg/apache/tika/config/ParamField;->setter:Ljava/lang/reflect/Method;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "get"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-string v1, "Invalid setter method. Must have one and only one parameter. "

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lorg/apache/tika/config/ParamField;->setter:Ljava/lang/reflect/Method;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, "Perhaps the annotation is misplaced on "

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, " while a set\'X\' is expected?"

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :cond_1
    new-instance v0, Lorg/apache/tika/exception/TikaConfigException;

    .line 68
    .line 69
    invoke-direct {v0, v1}, Lorg/apache/tika/exception/TikaConfigException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_2
    const/4 v1, 0x0

    .line 74
    aget-object v0, v0, v1

    .line 75
    .line 76
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    sget-object v1, Lorg/apache/tika/config/ParamField;->PRIMITIVE_MAP:Ljava/util/Map;

    .line 83
    .line 84
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/lang/Class;

    .line 95
    .line 96
    :cond_3
    return-object v0
.end method


# virtual methods
.method public assignValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/config/ParamField;->field:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/apache/tika/config/ParamField;->setter:Ljava/lang/reflect/Method;

    .line 10
    .line 11
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/config/ParamField;->field:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/config/ParamField;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSetter()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/config/ParamField;->setter:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/tika/config/ParamField;->type:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public isRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/tika/config/ParamField;->required:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/tika/config/ParamField;->name:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/tika/config/ParamField;->type:Ljava/lang/Class;

    .line 4
    .line 5
    iget-boolean v2, p0, Lorg/apache/tika/config/ParamField;->required:Z

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "ParamField{name=\'"

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "\', type="

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", required="

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, "}"

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
