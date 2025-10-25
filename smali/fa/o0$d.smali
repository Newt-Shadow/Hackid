.class Lfa/o0$d;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfa/o0;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfa/o0;


# direct methods
.method constructor <init>(Lfa/o0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lfa/o0$d;->a:Lfa/o0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "description"

    .line 7
    .line 8
    const-string v0, "MEDIA_RECORDER_ERROR"

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method
