.class public abstract enum Lcom/google/gson/b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/c;


# static fields
.field public static final enum a:Lcom/google/gson/b;

.field public static final enum b:Lcom/google/gson/b;

.field public static final enum c:Lcom/google/gson/b;

.field public static final enum d:Lcom/google/gson/b;

.field public static final enum e:Lcom/google/gson/b;

.field public static final enum f:Lcom/google/gson/b;

.field public static final enum g:Lcom/google/gson/b;

.field private static final synthetic h:[Lcom/google/gson/b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/gson/b$a;

    .line 2
    .line 3
    const-string v1, "IDENTITY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/gson/b$a;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/gson/b;->a:Lcom/google/gson/b;

    .line 10
    .line 11
    new-instance v1, Lcom/google/gson/b$b;

    .line 12
    .line 13
    const-string v2, "UPPER_CAMEL_CASE"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/google/gson/b$b;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/gson/b;->b:Lcom/google/gson/b;

    .line 20
    .line 21
    new-instance v2, Lcom/google/gson/b$c;

    .line 22
    .line 23
    const-string v3, "UPPER_CAMEL_CASE_WITH_SPACES"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/google/gson/b$c;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/google/gson/b;->c:Lcom/google/gson/b;

    .line 30
    .line 31
    new-instance v3, Lcom/google/gson/b$d;

    .line 32
    .line 33
    const-string v4, "UPPER_CASE_WITH_UNDERSCORES"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/google/gson/b$d;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/google/gson/b;->d:Lcom/google/gson/b;

    .line 40
    .line 41
    new-instance v4, Lcom/google/gson/b$e;

    .line 42
    .line 43
    const-string v5, "LOWER_CASE_WITH_UNDERSCORES"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/google/gson/b$e;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/google/gson/b;->e:Lcom/google/gson/b;

    .line 50
    .line 51
    new-instance v5, Lcom/google/gson/b$f;

    .line 52
    .line 53
    const-string v6, "LOWER_CASE_WITH_DASHES"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Lcom/google/gson/b$f;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Lcom/google/gson/b;->f:Lcom/google/gson/b;

    .line 60
    .line 61
    new-instance v6, Lcom/google/gson/b$g;

    .line 62
    .line 63
    const-string v7, "LOWER_CASE_WITH_DOTS"

    .line 64
    .line 65
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Lcom/google/gson/b$g;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v6, Lcom/google/gson/b;->g:Lcom/google/gson/b;

    .line 70
    .line 71
    filled-new-array/range {v0 .. v6}, [Lcom/google/gson/b;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/google/gson/b;->h:[Lcom/google/gson/b;

    .line 76
    .line 77
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/gson/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/gson/b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static b(Ljava/lang/String;C)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_2

    .line 18
    .line 19
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    add-int/2addr v2, v3

    .line 69
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/b;
    .locals 1

    .line 1
    const-class v0, Lcom/google/gson/b;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/gson/b;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/gson/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/gson/b;->h:[Lcom/google/gson/b;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/gson/b;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/gson/b;

    .line 8
    .line 9
    return-object v0
.end method
