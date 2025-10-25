.class Lfa/o0$b;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfa/o0;->l(Ljava/lang/Integer;Ljava/lang/Integer;Lia/b;Lha/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Lia/b;

.field final synthetic d:Lha/b;

.field final synthetic e:Ljava/lang/Boolean;

.field final synthetic f:Ljava/lang/Boolean;

.field final synthetic g:Lfa/o0;


# direct methods
.method constructor <init>(Lfa/o0;Ljava/lang/Integer;Ljava/lang/Integer;Lia/b;Lha/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfa/o0$b;->g:Lfa/o0;

    .line 2
    .line 3
    iput-object p2, p0, Lfa/o0$b;->a:Ljava/lang/Integer;

    .line 4
    .line 5
    iput-object p3, p0, Lfa/o0$b;->b:Ljava/lang/Integer;

    .line 6
    .line 7
    iput-object p4, p0, Lfa/o0$b;->c:Lia/b;

    .line 8
    .line 9
    iput-object p5, p0, Lfa/o0$b;->d:Lha/b;

    .line 10
    .line 11
    iput-object p6, p0, Lfa/o0$b;->e:Ljava/lang/Boolean;

    .line 12
    .line 13
    iput-object p7, p0, Lfa/o0$b;->f:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->doubleValue()D

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "previewWidth"

    .line 27
    .line 28
    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Ljava/lang/Integer;->doubleValue()D

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p2, "previewHeight"

    .line 40
    .line 41
    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const-string p1, "exposureMode"

    .line 45
    .line 46
    invoke-virtual {p4}, Lia/b;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    const-string p1, "focusMode"

    .line 54
    .line 55
    invoke-virtual {p5}, Lha/b;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    const-string p1, "exposurePointSupported"

    .line 63
    .line 64
    invoke-virtual {p0, p1, p6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    const-string p1, "focusPointSupported"

    .line 68
    .line 69
    invoke-virtual {p0, p1, p7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    return-void
.end method
