.class public Lzb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzb/c$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field public final a:I

.field public final b:Lzb/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "P(\\d+)(\\S+)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lzb/c;->c:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ILzb/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lzb/c;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lzb/c;->b:Lzb/c$a;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/lang/String;)Lzb/c;
    .locals 3

    .line 1
    sget-object v0, Lzb/c;->c:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    if-eqz p0, :cond_4

    .line 26
    .line 27
    :try_start_0
    new-instance v1, Lzb/c;

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const/16 v2, 0x44

    .line 39
    .line 40
    if-eq p0, v2, :cond_3

    .line 41
    .line 42
    const/16 v2, 0x4d

    .line 43
    .line 44
    if-eq p0, v2, :cond_2

    .line 45
    .line 46
    const/16 v2, 0x57

    .line 47
    .line 48
    if-eq p0, v2, :cond_1

    .line 49
    .line 50
    const/16 v2, 0x59

    .line 51
    .line 52
    if-eq p0, v2, :cond_0

    .line 53
    .line 54
    sget-object p0, Lzb/c$a;->a:Lzb/c$a;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    sget-object p0, Lzb/c$a;->e:Lzb/c$a;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    sget-object p0, Lzb/c$a;->c:Lzb/c$a;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    sget-object p0, Lzb/c$a;->d:Lzb/c$a;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    sget-object p0, Lzb/c$a;->b:Lzb/c$a;

    .line 67
    .line 68
    :goto_0
    invoke-direct {v1, v0, p0}, Lzb/c;-><init>(ILzb/c$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    return-object v1

    .line 72
    :catchall_0
    :cond_4
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lzb/c;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lzb/c;

    .line 18
    .line 19
    iget v2, p0, Lzb/c;->a:I

    .line 20
    .line 21
    iget v3, p1, Lzb/c;->a:I

    .line 22
    .line 23
    if-eq v2, v3, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    iget-object v2, p0, Lzb/c;->b:Lzb/c$a;

    .line 27
    .line 28
    iget-object p1, p1, Lzb/c;->b:Lzb/c$a;

    .line 29
    .line 30
    if-eq v2, p1, :cond_3

    .line 31
    .line 32
    return v1

    .line 33
    :cond_3
    return v0

    .line 34
    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lzb/c;->a:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x0

    .line 4
    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget-object v1, p0, Lzb/c;->b:Lzb/c$a;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Period{number="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lzb/c;->a:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "timeUnit="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lzb/c;->b:Lzb/c$a;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "}"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
