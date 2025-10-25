.class Lfa/o0$e;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfa/o0;->o(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfa/o0;


# direct methods
.method constructor <init>(Lfa/o0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfa/o0$e;->b:Lfa/o0;

    .line 2
    .line 3
    iput-object p2, p0, Lfa/o0$e;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string p1, "videoFilePath"

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method
