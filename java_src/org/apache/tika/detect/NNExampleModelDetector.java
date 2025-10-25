package org.apache.tika.detect;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.util.Objects;
import org.apache.tika.mime.MediaType;
/* loaded from: classes2.dex */
public class NNExampleModelDetector extends TrainedModelDetector {
    private static final String EXAMPLE_NNMODEL_FILE = "tika-example.nnmodel";
    private static final mf.c LOG = mf.e.l(NNExampleModelDetector.class);
    private static final long serialVersionUID = 1;

    public NNExampleModelDetector() {
    }

    private void readDescription(NNTrainedModelBuilder nNTrainedModelBuilder, String str) {
        String[] split = str.split("\t");
        try {
            MediaType parse = MediaType.parse(split[1]);
            int parseInt = Integer.parseInt(split[2]);
            int parseInt2 = Integer.parseInt(split[3]);
            int parseInt3 = Integer.parseInt(split[4]);
            nNTrainedModelBuilder.setNumOfInputs(parseInt);
            nNTrainedModelBuilder.setNumOfHidden(parseInt2);
            nNTrainedModelBuilder.setNumOfOutputs(parseInt3);
            nNTrainedModelBuilder.setType(parse);
        } catch (Exception e10) {
            LOG.u("Unable to parse the model configuration", e10);
            throw new RuntimeException("Unable to parse the model configuration", e10);
        }
    }

    private void readNNParams(NNTrainedModelBuilder nNTrainedModelBuilder, String str) {
        String[] split = str.split("\t");
        float[] fArr = new float[split.length];
        try {
            int i10 = 0;
            for (String str2 : split) {
                fArr[i10] = Float.parseFloat(str2);
                i10++;
            }
            nNTrainedModelBuilder.setParams(fArr);
        } catch (Exception e10) {
            LOG.u("Unable to parse the model configuration", e10);
            throw new RuntimeException("Unable to parse the model configuration", e10);
        }
    }

    @Override // org.apache.tika.detect.TrainedModelDetector
    public void loadDefaultModels(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
        NNTrainedModelBuilder nNTrainedModelBuilder = new NNTrainedModelBuilder();
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return;
                }
                String trim = readLine.trim();
                if (trim.startsWith("#")) {
                    readDescription(nNTrainedModelBuilder, trim);
                } else {
                    readNNParams(nNTrainedModelBuilder, trim);
                    super.registerModels(nNTrainedModelBuilder.getType(), nNTrainedModelBuilder.build());
                }
            } catch (IOException e10) {
                throw new RuntimeException("Unable to read the default media type registry", e10);
            }
        }
    }

    public NNExampleModelDetector(Path path) {
        loadDefaultModels(path);
    }

    public NNExampleModelDetector(File file) {
        loadDefaultModels(file);
    }

    @Override // org.apache.tika.detect.TrainedModelDetector
    public void loadDefaultModels(ClassLoader classLoader) {
        if (classLoader == null) {
            classLoader = TrainedModelDetector.class.getClassLoader();
        }
        String str = TrainedModelDetector.class.getPackage().getName().replace('.', '/') + "/";
        URL resource = classLoader.getResource(str + EXAMPLE_NNMODEL_FILE);
        Objects.requireNonNull(resource, "required resource " + str + "tika-example.nnmodel not found");
        try {
            InputStream openStream = resource.openStream();
            loadDefaultModels(openStream);
            if (openStream != null) {
                openStream.close();
            }
        } catch (IOException e10) {
            throw new RuntimeException("Unable to read the default media type registry", e10);
        }
    }
}
