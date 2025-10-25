.class public Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/KeyboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharacterCombiner"
.end annotation


# instance fields
.field private combiningCharacter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;->combiningCharacter:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method applyCombiningCharacterToBaseCharacter(I)Ljava/lang/Character;
    .locals 3

    .line 1
    int-to-char v0, p1

    .line 2
    const/high16 v1, -0x80000000

    .line 3
    .line 4
    and-int/2addr v1, p1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v2

    .line 11
    :goto_0
    if-eqz v1, :cond_2

    .line 12
    .line 13
    const v1, 0x7fffffff

    .line 14
    .line 15
    .line 16
    and-int/2addr p1, v1

    .line 17
    iget v1, p0, Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;->combiningCharacter:I

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-static {v1, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;->combiningCharacter:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iput p1, p0, Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;->combiningCharacter:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget v1, p0, Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;->combiningCharacter:I

    .line 32
    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    invoke-static {v1, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-lez p1, :cond_3

    .line 40
    .line 41
    int-to-char v0, p1

    .line 42
    :cond_3
    iput v2, p0, Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;->combiningCharacter:I

    .line 43
    .line 44
    :cond_4
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method
